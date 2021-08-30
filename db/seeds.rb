# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning up database..."
Report.destroy_all
User.destroy_all
Review.destroy_all
puts "Database cleaned"

puts "create user"
user1 = User.create!( email: 'tm@a', password: '123123', first_name: 'thiago', last_name: 'thi', cpf:'123.456.789-12', phone_number:'(67)99999-9991')
user2 = User.create!( email: 'an@a', password: '123123', first_name: 'Ana', last_name: 'Paula', cpf:'123.456.789-13', phone_number:'(67)99999-9992')
user3 = User.create!( email: 'ta@a', password: '123123', first_name: 'Tasso', last_name: 'Henrique', cpf:'123.456.789-14', phone_number:'(67)99999-9993')
user4 = User.create!( email: 'al@a', password: '123123', first_name: 'Allysson', last_name: 'Comin', cpf:'123.456.789-15', phone_number:'(67)99999-9994')

puts "create report"
report1 = Report.create!( description: 'assalto a mao armada', category: 'assalto', danger_level:'3', address:'Jerico, 72', latitude:'-23.551436', longitude:'-46.689363', user: user1)
report2 = Report.create!( description: 'matou de amor', category: 'latrocinio', danger_level:'5', address:'Olavo Bilac, 336', latitude:'-30.04218271967809', longitude:'-51.21617284503573', user: user2)
report3 = Report.create!( description: 'roubaram minha bike', category: 'furto', danger_level:'4', address:'Sumaré, 1231', latitude:'-23.540894066546617', longitude:'-46.67562752787585', user: user3)
report4 = Report.create!( description: 'atiraram no mad max', category: 'tiroteio', danger_level:'2', address:'CaiubÍ, 1461', latitude:'-23.53472189299989', longitude:'-46.68053058106432', user: user4)

puts "create review"
review1 = Review.create!(content: 'assaltou com uma cenoura', user: user2, report: report1)
review2 = Review.create!(content: 'mts beijos', user: user3, report: report2)
review3 = Review.create!(content: 'bike cheia de adesivo rosa', user: user4, report: report3)
review4 = Review.create!(content: 'meu carro ta cheio de tiro', user: user1, report: report4)
