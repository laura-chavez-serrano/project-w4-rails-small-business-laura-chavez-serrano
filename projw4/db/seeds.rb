# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

CSV.foreach('/Users/laura.s.chavez/Documents/projects/project-w4-rails-small-business-laura-chavez-serrano/projw4/db/faust_inventory.csv', headers: true, skip_blanks: true) do |row|
  Convert.create(row.to_h)
  
end