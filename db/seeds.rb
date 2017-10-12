users = [
    { username: "sharky_j", avatar_url: "http://naserca.com/images/sharky_j.jpg", password: 'secret', email: 'sharky_j@example.com' },
    { username: "kirk_whalum", avatar_url: "http://naserca.com/images/kirk_whalum.jpg", password: 'secret', email: 'kirk_whalum@example.com' },
    { username: "marlin_peppa", avatar_url: "http://naserca.com/images/marlin_peppa.jpg", password: 'secret', email: 'marlin_peppa@example.com' }
]

users.each do |user|
  User.create(user)
end

posts = [
    { photo_url: "http://naserca.com/images/shark.jpg", user_id: User.find_by({username: 'sharky_j'}).id},
    { photo_url: "http://naserca.com/images/whale.jpg", user_id: User.find_by({username: 'kirk_whalum'}).id },
    { photo_url: "http://naserca.com/images/marlin.jpg", user_id: User.find_by({username: 'marlin_peppa'}).id }
]

posts.each do |post|
  Post.create(post)
end