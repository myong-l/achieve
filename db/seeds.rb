# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# coding: utf-8

10.times do |n|
  email = "example-#{n+1}@railstutorial.org"
  password  = "password"
  User.create(name: "太郎 #{n+1}",
              profile: "よろしくお願いします！",
              email:    email,
              password: password,
              password_confirmation: password)
end
