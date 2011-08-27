require 'faker'

namespace :db do
desc "Fill database with sample data" #description of the databse task
 task :populate => :environment do     #task to be performed
  Rake::Task['db:reset'].invoke	      #resetting database runs the rake:db:reset cmd
  make_users
  make_microposts
  make_relationships
 end
end

def make_users
    admin = User.create!(:name => "Gauranga",
	       :email => "manish.gauranga@gmail.com",
	       :password => "harekrishna",
	       :password_confirmation => "harekrishna")
  admin.toggle!(:admin)
  99.times do |n|
      name = Faker::Name.name
      email = "manish-#{n+1}.gauranga@gmail.com"
      password = "harekrishna"
      User.create!(:name => name, :email => email, :password => password, 
		   :password_confirmation => password)
  end
end

def make_microposts
  User.all(:limit => 6).each do |user|
    50.times do
      user.microposts.create!(:content => Faker::Lorem.sentence(5))
    end
  end
end

def make_relationships
  users = User.all
  user = users.first
  following = users[1..50]
  followers = users[3..40]
  following.each{ |followed| user.follow!(followed) }
  followers.each{ |follower| follower.follow!(user) }
end