namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_users
    make_blogs
    make_contacts
  end
end

def make_users
  5.times do |n|
    User.create!(name: "小次郎#{n+1}",
                 profile:  "よろしくお願いします！",
                 email:    "example-#{n+1}@sample.com",
                 password: "password",
                 password_confirmation: "password")
  end
end

def make_blogs
  users = User.all
  10.times do
    users.each { |user| user.blogs.create!(title: "よろしくお願いします！",
      content: "サンプルデーター" ) }
  end
end

def make_contacts
  10.times do |n|
    Contact.create!(title: "お問い合わせ#{n+1}",
                    content: "サンプル#{n+1}",
                    email: "example-#{n+1}@sample.com",
                    )
  end
end