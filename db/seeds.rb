# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Project.destroy_all

projects_array = [
  {
    name: "got brunch?",
    url: "https://brunchinator.herokuapp.com",
    description: "by Ms. Happy",
    user_id: 1
  },
  {
    name: "got fun?",
    url: "https://get-out-and-play.herokuapp.com",
    description: "by Mr. Perfect",
    user_id: 1
  },
  {
    name: "got mom from hell?",
    url: "http://escapethecall.herokuapp.com",
    description: "Ms. Wit",
    user_id: 1
  },
  {
    name: "was offline last i check",
    url: "http://something.heroku.com",
    description: "email test seed data",
    user_id: 1
  }
]

projects_array.each do |project|
  current_project = Project.create!(project)
end

User.create!(email: "seekpeace@gmail.com", password: "ImDaFool")
