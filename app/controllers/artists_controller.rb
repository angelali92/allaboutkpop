class ArtistsController < ApplicationController

	def index
		respond_to do |format|
			format.json { @artists = Artist.all }
			format.html { @artists = Artist.all }
		end
	end

	def show
		respond_to do |format|
			format.json { @artist = Artist.find(params[:id]) }
			format.html { @artist = Artist.find(params[:id]) }
		end
	end

	def new
		@artist = Artist.new
	end

	def create
		@artist = Artist.new(artist_params)
		if @artist.save
			redirect_to @artist
		else
			render 'new'
		end
	end

	def edit
		@artist = Artist.find(params[:id])
	end

	def update
		@artist = Artist.find(params[:id])
		if @artist.update_attributes(artist_params)
			redirect_to @artist
		else
			render 'edit'
		end
	end

	def destroy
		@artist = Artist.find(params[:id])
		if @artist.destroy
			redirect_to artists_path
		else
			render 'show'
		end
	end

	private
		def artist_params
			params.require(:artist).permit(:first_name, :stage_name, :last_name, :agency, :isActor, :gender, :debut, :birthday, :bloodType, :horoscope, :image_url)
		end
end
