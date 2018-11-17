# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(
	email:"evren_nari@hotmail.com",
	password:"321654",
	password_confirmation:"321654",
	name:"Evren Nari",
	roles: "site_admin",

	)
User.create!(
	email:"sunay_chakir@hotmail.com",
	password:"321654",
	password_confirmation:"321654",
	name:"Sunay Çakır",
	roles: "user",

	)

3.times do |t|
	Topic.create!(
		title: "Topic #{t}"	
		)
end


10.times do |x|
	Blog.create!(
		title: "Blog Kaydı #{x}",
		body: "At vero eos et accusamus et iusto odio dignissimos ducimus qui 
		blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et 
		quas molestias excepturi sint occaecati cupiditate non provident, 
		similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. 
		Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, 
		cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, 
		omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis 
		debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. 
		Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus 
		maiores alias consequatur aut perferendis doloribus asperiores repellat.",	
		topic_id: 3
	)
end
5.times do |x|
	Skill.create!(
		title: "Rails #{x}",
		percent_utilized: 10
	)
end
8.times do |x|
	Portfolio.create!(
		title: "port başlığı #{x}",
		subtitle: "Ruby on rails #{x}",
		body:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
		sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
		Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
		Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
		Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",

		main_image:"https://via.placeholder.com/600x400",
		thumb_image:"https://via.placeholder.com/350x150"
	)
end
1.times do |x| 
	Portfolio.create!(
		title: "port başlığı 9",
		subtitle: "angular",
		body:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
		sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
		Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
		Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
		Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",

		main_image:"https://via.placeholder.com/600x400",
		thumb_image:"https://via.placeholder.com/350x150"
	)
 end
3.times do |x|
	 Portfolio.last.technologies.create!(
		name: "Technology #{x}",
	



		)
end