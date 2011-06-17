# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Profession.create([
  {:name => 'Stegosaurus Construction'},
  {:name => 'Ambulance Juggling'},
  {:name => 'Titanic Chewing'},
  {:name => 'Indecision Nonmaking'},
  {:name => 'Tantrum Fuelling'}
])

@trader1 = Trader.create(
  :first_name => 'Eau',
  :last_name => 'de Humanity',
  :email => '1@2.com',
  :password => 'blargh'
)

@trader2 = Trader.create(
  :first_name => 'Eau',
  :last_name => 'de Klingon',
  :email = '1@3.com',
  :password => 'blargh'
)

@trader3 = Trader.create(
  :first_name => 'Orifice',
  :last_name => 'McSweeney',
  :email => '1@4.com',
  :password => 'blargh' 
)

Job.create([
  {
    
  }  
])
