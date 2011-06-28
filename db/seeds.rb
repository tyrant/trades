# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Profession.all.each { |p| p.destroy }
City.all.each { |l| l.destroy }
Trader.all.each { |t| t.destroy }
Address.all.each { |a| a.destroy }
Job.all.each { |j| j.destroy }
Customer.all.each { |c| c.destroy }

Profession.create!(:name => 'Stegosaurus Construction')
Profession.create!(:name => 'Ambulance Juggling')
Profession.create!(:name => 'Titanic Chewing')
Profession.create!(:name => 'Indecision Nonmaking')
Profession.create!(:name => 'Tantrum Fuelling')

City.create!(:name => 'Whanagrei', :lat => -35.72366, :lng => 174.323502)
City.create!(:name => 'Auckland', :lat => -36.853664, :lng => 174.764929)
City.create!(:name => 'Hamilton', :lat => -38.45574, :lng => 175.406342)
City.create!(:name => 'Rotorua', :lat => -37.787001, :lng => 175.279253)
City.create!(:name => 'Taupo', :lat => -38.136848, :lng => 176.249746)
City.create!(:name => 'Napier', :lat => -38.685692, :lng => 176.07021)
City.create!(:name => 'Gisborne', :lat => 39.492844, :lng => 176.912018)
City.create!(:name => 'New Plymouth', :lat => -38.662334, :lng => 178.017649)
City.create!(:name => 'hhhhhhhWanganui', :lat => -39.005625, :lng => 174.075228)
City.create!(:name => 'Palmerston North', :lat => -39.930089, :lng => 175.04789)
City.create!(:name => 'Masterton', :lat => -40.352306, :lng => 175.608214)
City.create!(:name => 'Wellington', :lat => -41.292494, :lng => 174.773235)
City.create!(:name => 'Nelson', :lat => -41.292494, :lng => 174.773235)
City.create!(:name => 'Greymouth', :lat => -42.454498, :lng => 171.206478)
City.create!(:name => 'Christchurch', :lat => -42.454498, :lng => 171.206478)
City.create!(:name => 'Timaru', :lat => -43.532054, :lng => 172.636225)
City.create!(:name => 'Queenstown', :lat => -44.396972, :lng => 171.254973)
City.create!(:name => 'Dunedin', :lat => -45.031162, :lng => 186.662644)
City.create!(:name => 'Invercargill', :lat => -45.87876, :lng => 170.502798)

@trader1 = Trader.create!(
  :first_name => 'Eau',
  :last_name => 'de Humanity',
  :email => '1@2.com',
  :password => 'blargh'
)

@trader2 = Trader.create!(
  :first_name => 'Eau',
  :last_name => 'de Klingon',
  :email => '1@3.com',
  :password => 'blargh'
)

@trader3 = Trader.create!(
  :first_name => 'Orifice',
  :last_name => 'McSweeney',
  :email => '1@4.com',
  :password => 'blargh' 
)

@customer1 = Customer.create!(
  :first_name => 'First',
  :last_name => 'Last',
  :email => '1@5.com',
  :password => 'blargh'
)

@customer2 = Customer.create!(
  :first_name => 'Angus',
  :last_name => 'Baxter',
  :email => '1@6.com',
  :password => 'blargh'
)

@address1 = Address.create!(
  :lat => -41.289424,
  :lng => 174.75994,
  :readable => 'My place!'
)

@job1 = Job.create!(
  :title => 'Job 1 title',
  :description => 'Job 1 description',
  :customer => @customer1,
  :trader => @trader1,
  :address => @address1
)

@review1 = Review.create!(
  :title => 'Review 1 title',
  :description => 'Review 1 description of a Job',
  :mark => 3,
  :reviewer => @customer1,
  :reviewable => @job1
)

@review2 = Review.create!(
  :title => 'Review 2 title',
  :description => 'Review 2 description of a Trader',
  :mark => 4,
  :reviewer => @customer1,
  :reviewable => @trader1
)

@address2 = Address.create!(
  :lat => -41.293713,
  :lng => 174.784284,
  :readable => 'WellRailed meetup'
)

@job2 = Job.create!(
  :title => 'Job 2 title',
  :description => 'Job 2 description',
  :customer => @customer2,
  :trader => @trader2,
  :address => @address2
)

@review3 = Review.create!(
  :title => 'Review 3 title',
  :description => 'Review 3 description of a Job',
  :mark => 2,
  :reviewer => @customer2,
  :reviewable => @job2
)

@review4 = Review.create!(
  :title => 'Review 4 title',
  :description => 'Review 4 description of a Trader',
  :mark => 1,
  :reviewer => @customer2,
  :reviewable => @trader2
)

@address3 = Address.create!(
  :lat => 41.300846,
  :lng => 174.780625,
  :readable => 'Just next door: THE BASIN RESERVE!!!!!! (actual Platinum Rentals ad for a Kelburn flat)'
)

@job3 = Job.create!(
  :title => 'Job 3 title',
  :description => 'Job 3 description',
  :customer => @customer1,
  :trader => @trader1,
  :address => @address3
)

@review5 = Review.create!(
  :title => 'Review 5 title',
  :description => 'Review 5 description of a Job',
  :mark => 2,
  :reviewer => @customer1,
  :reviewable => @job3
)

@review6 = Review.create!(
  :title => 'Review 6 title',
  :description => 'Review 6 description of a Trader',
  :mark => 3,
  :reviewer => @customer1,
  :reviewable => @trader1
)

@address4 = Address.create!(
  :lat => -41.309389,
  :lng => 174.782073,
  :readable => 'Hospital'
)

@job4 = Job.create!(
  :title => 'Job 4 title',
  :description => 'Job 4 description',
  :customer => @customer2,
  :trader => @trader2,
  :address => @address4
)

@review7 = Review.create!(
  :title => 'Review 7 title',
  :description => 'Review 7 description of a Job',
  :mark => 5,
  :reviewer => @customer2,
  :reviewable => @job4
)

@review8 = Review.create!(
  :title => 'Review 8 title',
  :description => 'Review 8 description of a Trader',
  :mark => 5,
  :reviewer => @customer2,
  :reviewable => @trader2
)