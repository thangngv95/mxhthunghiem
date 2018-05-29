User.create! name: "Example Name", email: "example@railstutorial.org",
  password: "123456", password_confirmation: "123456"

User.create! name: "NVT", email: "vietthangxx1@gmail.com",
  password: "123456", password_confirmation: "123456", admin: "admin"


30.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create! name: name, email: email, password: password,
    password_confirmation: password
end

users = User.all
users.limit(20).each do |user|
  name = Faker::Team.name
  policy = Faker::Number.between(0, 1)
  Group.create! name: name, policy: policy
  GroupUser.create! group_id: Group.last.id, user_id: user.id,
    admin_group: true
  1.upto(5) do |n|
    GroupUser.create! group_id: Group.last.id, user_id: user.id+n
  end
end

user = users.first
following = users[2..20]
followers = users[3..25]
following.each {|followed| user.follow followed}
followers.each {|follower| follower.follow user}
