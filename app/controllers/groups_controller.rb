class GroupsController < ApplicationController

	def index
		respond_to do |format|
			format.json { @groups = Group.all }
			format.html { @groups = Group.all }
		end
	end

	def show
		respond_to do |format|
			format.json { @group = Group.find(params[:id]) }
			format.html { @group = Group.find(params[:id]) }
		end
	end

	def new
		@group = Group.new
	end

	def create
		@group = Group.new(group_params)
		if @group.save
			@group.calculate_avg_age()
			@group.calculate_avg_height()
			redirect_to @group
		else
			render 'new'
		end
	end

	def edit
		@group = Group.find(params[:id])
	end

	def update
		@group = Group.find(params[:id])
		if @group.update_attributes(group_params)
			@group.calculate_avg_age()
			@group.calculate_avg_height()
			redirect_to @group
		else
			render 'edit'
		end
	end

	def destroy
		@group = Group.find(params[:id])
		if @group.destroy
			redirect_to groups_path
		else
			render 'show'
		end
	end

	private
		def group_params
			params.require(:group).permit(:image_url, :name, :agency, :num_members, :gender, :debut)
		end
end
