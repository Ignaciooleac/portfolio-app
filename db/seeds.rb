# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
tag = Tag.create([{name: "Fun"},{name: "Art"},{name: "Night"},{name: "Something"},{name: "Idea"},{name: "Old School"},{name: "2019"}])
category = Category.create([{name:"Architecture"},{name: "Hand Draw"},{name: "Sports"},{name: "Digital"},{name: "Drawing"}])
5.times do |n|
    name = "user#{n+1}"
    email = "email#{n+1}@mail.com"
    password = "password"
    User.create!(name: name,
                email: email,
                password: password
    )
end

users = User.all
2.times do |n|
    user = users.each
    title = "Sample Title#{n+1}"
    category = Category.all.sample.id
    description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel sem non ipsum malesuada feugiat. Duis fringilla semper nibh quis tincidunt."
    Post.create!(user: user,
        title: title,
                category: category,
                description: description
                
                )
end

#    tags = Tag.all.sample
#for tags.each do |n|
    #tag_ids = Tag.all.sample.name


