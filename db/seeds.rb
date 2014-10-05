# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

artists = Artist.create([
	{ 
		first_name: "Changmin", stage_name: "Max", last_name: "Shim", agency: "SM Entertainment", isActor: true, gender: "Male", debut: "2003-12-26", birthday: "1988-2-18", bloodType: "B", horoscope: "Aquarius", image_url: "http://images6.fanpop.com/image/photos/34300000/mirotic-changmin-dbsk-kawai-dbsk-34399446-667-1000.jpg" 
	},
	{ 
		first_name: "Yunho", stage_name: "U-Know", last_name: "Jung", agency: "SM Entertainment", isActor: true, gender: "Male", debut: "2003-12-26", birthday: "1986-2-6", bloodType: "B", horoscope: "Aquarius", image_url: "http://images6.fanpop.com/image/photos/34300000/mirotic-yunho-dbsk-kawai-dbsk-34399309-667-1000.jpg" 
	}
]);

groups = Group.create([
	{ 
		name: "Dong Bang Shin Ki (DBSK)", agency: "SM Entertainment",num_members: 5, gender: "Male", debut: "2003-12-26", avg_age: 27, avg_height: "184", image_url: "http://lovetohateme.files.wordpress.com/2008/09/dbsk43.jpg"
	}
]);