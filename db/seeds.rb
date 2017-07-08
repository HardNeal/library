# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: 'Admin', email: 'admin@example.com', password: '123456', admin: true)
User.create!(name: 'User', email: 'user@example.com', password: '123456')
Category.create!(name: 'Мистика')
Category.create!(name: 'Фентези')
Author.create!(name: 'Georgy', surname: 'Leps')
Author.create!(name: 'Gag', surname: 'Fils')
Author.create!(name: 'Gase', surname: 'Job')
Author.create!(name: 'Baas', surname: 'Hahatunovich')
Book.create!(name: 'Книжка Папа', desc: 'Пук пук и нет головки', user_id: 1, author_id: 1, category_id: 1)
Book.create!(name: 'Книжка Дядя', desc: 'Пук пук и нет головки', user_id: 1, author_id: 1, category_id: 2)
Book.create!(name: 'Книжка Тетя', desc: 'Пук пук и нет головки', user_id: 1, author_id: 1, category_id: 1)
