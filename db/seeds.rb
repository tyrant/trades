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

@pro1 = Profession.create!(:name => 'Accounting')
@pro1.children << Profession.create!(:name => 'Accountant')
@pro1.children << Profession.create!(:name => 'Accounts analyst')
@pro1.children << Profession.create!(:name => 'Accounts clerk')
@pro1.children << Profession.create!(:name => 'Accounts payable')
@pro1.children << Profession.create!(:name => 'Accounts receivable')
@pro1.children << Profession.create!(:name => 'Financial controller')
@pro1.children << Profession.create!(:name => 'Management')
@pro1.children << Profession.create!(:name => 'Payroll')
@pro1.children << Profession.create!(:name => 'Other')

@pro2 = Profession.create!(:name => 'Agriculture, fishing, forestry')
@pro2a = Profession.create!(:parent => @pro2, :name => 'Farming')
@pro2b = Profession.create!(:parent => @pro2, :name => 'Fishing')
@pro2c = Profession.create!(:parent => @pro2, :name => 'Forestry')
@pro2d = Profession.create!(:parent => @pro2, :name => 'Horticulture')
@pro2e = Profession.create!(:parent => @pro2, :name => 'Other')

@pro3 = Profession.create!(:name => 'Banking, finance, insurance')
@pro3a = Profession.create!(:parent => @pro3, :name => 'Analyst')
@pro3b = Profession.create!(:parent => @pro3, :name => 'Client services')
@pro3c = Profession.create!(:parent => @pro3, :name => 'Corporate and institutional')
@pro3d = Profession.create!(:parent => @pro3, :name => 'Credit and lending')
@pro3e = Profession.create!(:parent => @pro3, :name => 'Financial planning')
@pro3f = Profession.create!(:parent => @pro3, :name => 'Funds management and investment')
@pro3g = Profession.create!(:parent => @pro3, :name => 'Insurance')
@pro3h = Profession.create!(:parent => @pro3, :name => 'Management')
@pro3i = Profession.create!(:parent => @pro3, :name => 'Settlements')
@pro3j = Profession.create!(:parent => @pro3, :name => 'Tellers and branch staff')
@pro3k = Profession.create!(:parent => @pro3, :name => 'Other')

@pro4 = Profession.create!(:name => 'Construction, architecture')
@pro4a = Profession.create!(:parent => @pro4, :name => 'Architecture')
@pro4b = Profession.create!(:parent => @pro4, :name => 'Drafting')
@pro4c = Profession.create!(:parent => @pro4, :name => 'Estimation')
@pro4d = Profession.create!(:parent => @pro4, :name => 'Interior design')
@pro4e = Profession.create!(:parent => @pro4, :name => 'Labouring')
@pro4f = Profession.create!(:parent => @pro4, :name => 'Machine operators')
@pro4g = Profession.create!(:parent => @pro4, :name => 'Planning')
@pro4h = Profession.create!(:parent => @pro4, :name => 'Project management')
@pro4i = Profession.create!(:parent => @pro4, :name => 'Site management')
@pro4j = Profession.create!(:parent => @pro4, :name => 'Supervisor/foreperson')
@pro4k = Profession.create!(:parent => @pro4, :name => 'Surveying')
@pro4l = Profession.create!(:parent => @pro4, :name => 'Other')

@pro5 = Profession.create!(:name => 'Customer Service')
@pro5a = Profession.create!(:parent => @pro5, :name => 'Customer service')
@pro5b = Profession.create!(:parent => @pro5, :name => 'Management')
@pro5c = Profession.create!(:parent => @pro5, :name => 'Other');

@pro6 = Profession.create!(:name => 'Education')
@pro6a = Profession.create!(:parent => @pro6, :name => 'Pre-school')
@pro6b = Profession.create!(:parent => @pro6, :name => 'Primary')
@pro6c = Profession.create!(:parent => @pro6, :name => 'Secondary')
@pro6d = Profession.create!(:parent => @pro6, :name => 'Tertiary')
@pro6e = Profession.create!(:parent => @pro6, :name => 'Vocational and training')
@pro6f = Profession.create!(:parent => @pro6, :name => 'Other')

@pro7 = Profession.create!(:name => 'Engineering')
@pro7a = Profession.create!(:parent => @pro7, :name => 'Building serivces')
@pro7b = Profession.create!(:parent => @pro7, :name => 'Civil and structural')
@pro7c = Profession.create!(:parent => @pro7, :name => 'Drafting')
@pro7d = Profession.create!(:parent => @pro7, :name => 'Electrical')
@pro7e = Profession.create!(:parent => @pro7, :name => 'Energy')
@pro7f = Profession.create!(:parent => @pro7, :name => 'Environmental')
@pro7g = Profession.create!(:parent => @pro7, :name => 'Industrial')
@pro7h = Profession.create!(:parent => @pro7, :name => 'Maintenance')
@pro7i = Profession.create!(:parent => @pro7, :name => 'Mechanical')
@pro7j = Profession.create!(:parent => @pro7, :name => 'Project management')
@pro7k = Profession.create!(:parent => @pro7, :name => 'Water and waste')
@pro7l = Profession.create!(:parent => @pro7, :name => 'Other')

@pro8 = Profession.create!(:name => 'Government council')
@pro8a = Profession.create!(:parent => @pro8, :name => 'Central government')
@pro8b = Profession.create!(:parent => @pro8, :name => 'Defence')
@pro8c = Profession.create!(:parent => @pro8, :name => 'Local and regional council')
@pro8d = Profession.create!(:parent => @pro8, :name => 'Other')

@pro9 = Profession.create!(:name => 'Healthcare')
@pro9a = Profession.create!(:parent => @pro9, :name => 'Administration')
@pro9b = Profession.create!(:parent => @pro9, :name => 'Caregiving')
@pro9c = Profession.create!(:parent => @pro9, :name => 'Community and social services')
@pro9d = Profession.create!(:parent => @pro9, :name => 'Dentistry')
@pro9e = Profession.create!(:parent => @pro9, :name => 'Doctors and specialists')
@pro9f = Profession.create!(:parent => @pro9, :name => 'Management')
@pro9g = Profession.create!(:parent => @pro9, :name => 'Nursing and midwifery')
@pro9h = Profession.create!(:parent => @pro9, :name => 'Occupational therapy')
@pro9i = Profession.create!(:parent => @pro9, :name => 'Pharmacy')
@pro9j = Profession.create!(:parent => @pro9, :name => 'Physiotherapy')
@pro9k = Profession.create!(:parent => @pro9, :name => 'Psychology and counselling')
@pro9l = Profession.create!(:parent => @pro9, :name => 'Radiography and sonography')
@pro9m = Profession.create!(:parent => @pro9, :name => 'Other')

@pro10 = Profession.create!(:name => 'Hospitality and tourism')
@pro10a = Profession.create!(:parent => @pro10, :name => 'Bar staff and baristas')
@pro10b = Profession.create!(:parent => @pro10, :name => 'Chefs')
@pro10c = Profession.create!(:parent => @pro10, :name => 'Housekeeping')
@pro10d = Profession.create!(:parent => @pro10, :name => 'Kitchen staff')
@pro10e = Profession.create!(:parent => @pro10, :name => 'Management')
@pro10f = Profession.create!(:parent => @pro10, :name => 'Reception and front desk')
@pro10g = Profession.create!(:parent => @pro10, :name => 'Travel consultant')
@pro10h = Profession.create!(:parent => @pro10, :name => 'Waiting staff')
@pro10i = Profession.create!(:parent => @pro10, :name => 'Other')

@pro11 = Profession.create!(:name => 'HR and recruitment')
@pro11a = Profession.create!(:parent => @pro11, :name => 'HR')
@pro11b = Profession.create!(:parent => @pro11, :name => 'Recruitment consultants')
@pro11c = Profession.create!(:parent => @pro11, :name => 'Other')

@pro12 = Profession.create!(:name => 'IT')
@pro12a = Profession.create!(:parent => @pro12, :name => 'Architects')
@pro12b = Profession.create!(:parent => @pro12, :name => 'Business analyst')
@pro12c = Profession.create!(:parent => @pro12, :name => 'Database')
@pro12d = Profession.create!(:parent => @pro12, :name => 'Functional consultant')
@pro12e = Profession.create!(:parent => @pro12, :name => 'Helpdesk')
@pro12f = Profession.create!(:parent => @pro12, :name => 'Management')
@pro12g = Profession.create!(:parent => @pro12, :name => 'Networking and systems')
@pro12h = Profession.create!(:parent => @pro12, :name => 'Programming and development')
@pro12i = Profession.create!(:parent => @pro12, :name => 'Project management')
@pro12j = Profession.create!(:parent => @pro12, :name => 'Sales and pre-sales')
@pro12k = Profession.create!(:parent => @pro12, :name => 'Security')
@pro12l = Profession.create!(:parent => @pro12, :name => 'Telecommunications')
@pro12m = Profession.create!(:parent => @pro12, :name => 'Testers')
@pro12n = Profession.create!(:parent => @pro12, :name => 'Trainers')
@pro12o = Profession.create!(:parent => @pro12, :name => 'Web design')
@pro12p = Profession.create!(:parent => @pro12, :name => 'Other')

@pro13 = Profession.create!(:name => 'Legal')
@pro13a = Profession.create!(:parent => @pro13, :name => 'In-house counsel')
@pro13b = Profession.create!(:parent => @pro13, :name => 'Private practice')
@pro13c = Profession.create!(:parent => @pro13, :name => 'Secretarial')
@pro13d = Profession.create!(:parent => @pro13, :name => 'Other')

@pro14 = Profession.create!(:name => 'Manufacturing and operations')
@pro14a = Profession.create!(:parent => @pro14, :name => 'Fitting and machining')
@pro14b = Profession.create!(:parent => @pro14, :name => 'Machine operation')
@pro14c = Profession.create!(:parent => @pro14, :name => 'Management')
@pro14d = Profession.create!(:parent => @pro14, :name => 'Process assembly')
@pro14e = Profession.create!(:parent => @pro14, :name => 'Purchasing')
@pro14f = Profession.create!(:parent => @pro14, :name => 'Quality assurance')
@pro14g = Profession.create!(:parent => @pro14, :name => 'Storeperson and warehousing')
@pro14h = Profession.create!(:parent => @pro14, :name => 'Supervisor/foreperson')
@pro14i = Profession.create!(:parent => @pro14, :name => 'Other')

@pro15 = Profession.create!(:name => 'Marketing and media communications')
@pro15a = Profession.create!(:parent => @pro15, :name => 'Brand and product management')
@pro15b = Profession.create!(:parent => @pro15, :name => 'Communications and PR')
@pro15c = Profession.create!(:parent => @pro15, :name => 'Design')
@pro15d = Profession.create!(:parent => @pro15, :name => 'Direct marketing')
@pro15e = Profession.create!(:parent => @pro15, :name => 'Journalism')
@pro15f = Profession.create!(:parent => @pro15, :name => 'Management')
@pro15g = Profession.create!(:parent => @pro15, :name => 'Market research and analysis')
@pro15h = Profession.create!(:parent => @pro15, :name => 'Marketing assistant/coordinator')
@pro15i = Profession.create!(:parent => @pro15, :name => 'Other')

@pro16 = Profession.create!(:name => 'Office and administration')
@pro16a = Profession.create!(:parent => @pro16, :name => 'Administration')
@pro16b = Profession.create!(:parent => @pro16, :name => 'Data entry')
@pro16c = Profession.create!(:parent => @pro16, :name => 'Executive assistant')
@pro16d = Profession.create!(:parent => @pro16, :name => 'Office management')
@pro16e = Profession.create!(:parent => @pro16, :name => 'Reception')
@pro16f = Profession.create!(:parent => @pro16, :name => 'Secretarial')
@pro16g = Profession.create!(:parent => @pro16, :name => 'Other')

@pro17 = Profession.create!(:name => 'Retail')
@pro17a = Profession.create!(:parent => @pro17, :name => 'Assistant store manager')
@pro17b = Profession.create!(:parent => @pro17, :name => 'Management')
@pro17c = Profession.create!(:parent => @pro17, :name => 'Merchandising')
@pro17d = Profession.create!(:parent => @pro17, :name => 'Retail assistant')
@pro17e = Profession.create!(:parent => @pro17, :name => 'Store manager')
@pro17f = Profession.create!(:parent => @pro17, :name => 'Other')

@pro18 = Profession.create!(:name => 'Sales')
@pro18a = Profession.create!(:parent => @pro18, :name => 'Account management')
@pro18b = Profession.create!(:parent => @pro18, :name => 'Business development manager')
@pro18c = Profession.create!(:parent => @pro18, :name => 'Sales manager')
@pro18d = Profession.create!(:parent => @pro18, :name => 'Sales reps')
@pro18e = Profession.create!(:parent => @pro18, :name => 'Sales support')
@pro18f = Profession.create!(:parent => @pro18, :name => 'Telesales')
@pro18g = Profession.create!(:parent => @pro18, :name => 'Other')

@pro19 = Profession.create!(:name => 'Science and technology')

@pro20 = Profession.create!(:name => 'Trades and services')
@pro20a = Profession.create!(:parent => @pro20, :name => 'Air con. and refrigeration')
@pro20b = Profession.create!(:parent => @pro20, :name => 'Automotive trades')
@pro20c = Profession.create!(:parent => @pro20, :name => 'Bakers')
@pro20d = Profession.create!(:parent => @pro20, :name => 'Beautician')
@pro20e = Profession.create!(:parent => @pro20, :name => 'Boat building')
@pro20f = Profession.create!(:parent => @pro20, :name => 'Boilermakers and welders')
@pro20g = Profession.create!(:parent => @pro20, :name => 'Building and carpentry')
@pro20h = Profession.create!(:parent => @pro20, :name => 'Butchers')
@pro20i = Profession.create!(:parent => @pro20, :name => 'Cleaning')
@pro20j = Profession.create!(:parent => @pro20, :name => 'Electrical')
@pro20k = Profession.create!(:parent => @pro20, :name => 'Flooring')
@pro20l = Profession.create!(:parent => @pro20, :name => 'Gardening and landscaping')
@pro20m = Profession.create!(:parent => @pro20, :name => 'Glaziers')
@pro20n = Profession.create!(:parent => @pro20, :name => 'Hairdressing')
@pro20o = Profession.create!(:parent => @pro20, :name => 'Handy-persons')
@pro20p = Profession.create!(:parent => @pro20, :name => 'Labourers')
@pro20q = Profession.create!(:parent => @pro20, :name => 'Painting')
@pro20r = Profession.create!(:parent => @pro20, :name => 'Plumbing')
@pro20s = Profession.create!(:parent => @pro20, :name => 'Printing')
@pro20t = Profession.create!(:parent => @pro20, :name => 'Roofing')
@pro20u = Profession.create!(:parent => @pro20, :name => 'Security')
@pro20v = Profession.create!(:parent => @pro20, :name => 'Sign writers')
@pro20w = Profession.create!(:parent => @pro20, :name => 'Technicians')
@pro20x = Profession.create!(:parent => @pro20, :name => 'Other')

@pro21 = Profession.create!(:name => 'Transport and logistics')
@pro21a = Profession.create!(:parent => @pro21, :name => 'Drivers and couriers')
@pro21b = Profession.create!(:parent => @pro21, :name => 'Freight forwarders')
@pro21c = Profession.create!(:parent => @pro21, :name => 'Import and export')
@pro21d = Profession.create!(:parent => @pro21, :name => 'Management')
@pro21e = Profession.create!(:parent => @pro21, :name => 'Operations')
@pro21f = Profession.create!(:parent => @pro21, :name => 'Supply chain')
@pro21g = Profession.create!(:parent => @pro21, :name => 'Warehouse and distribution')
@pro21h = Profession.create!(:parent => @pro21, :name => 'Other')

@pro22 = Profession.create!(:name => 'Other')
@pro23 = Profession.create!(:name => 'Misc')

City.create!(:name => 'Whanagrei', :lat => -35.72366, :lng => 174.323502)
City.create!(:name => 'Auckland', :lat => -36.853664, :lng => 174.764929)
City.create!(:name => 'Hamilton', :lat => -38.45574, :lng => 175.406342)
City.create!(:name => 'Rotorua', :lat => -37.787001, :lng => 175.279253)
City.create!(:name => 'Taupo', :lat => -38.136848, :lng => 176.249746)
City.create!(:name => 'Napier', :lat => -38.685692, :lng => 176.07021)
City.create!(:name => 'Gisborne', :lat => 39.492844, :lng => 176.912018)
City.create!(:name => 'New Plymouth', :lat => -38.662334, :lng => 178.017649)
City.create!(:name => 'Wanganui', :lat => -39.005625, :lng => 174.075228)
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
  :password => 'blargh',
  :sprightly => true,
  :professions => [@pro1, @pro2]
)

@trader2 = Trader.create!(
  :first_name => 'Eau',
  :last_name => 'de Klingon',
  :email => '1@3.com',
  :password => 'blargh',
  :sprightly => true
)

@trader3 = Trader.create!(
  :first_name => 'Orifice',
  :last_name => 'McSweeney',
  :email => '1@4.com',
  :password => 'blargh',
  :sprightly => true
)

@trader4 = Trader.create!(
  :first_name => 'Keith',
  :last_name => 'Zambizi',
  :email => '1@5.com',
  :password => 'blargh',
  :sprightly => true
)

@trader5 = Trader.create!(
  :first_name => 'Honkytonk',
  :last_name => 'Badonkadonk',
  :email => '1@6.com',
  :password => 'blargh',
  :sprightly => true
)

@trader6 = Trader.create!(
  :first_name => 'First',
  :last_name => 'Second',
  :email => '1@7.com',
  :password => 'blargh',
  :sprightly => true
)

@trader7 = Trader.create!(
  :first_name => 'Statford',
  :last_name => 'de Aven',
  :email => '1@8.com',
  :password => 'blargh',
  :sprightly => true
)

@trader8 = Trader.create!(
  :first_name => 'Carry on',
  :last_name => 'Kampfing',
  :email => '1@9.com',
  :password => 'blargh',
  :sprightly => true
)

@trader9 = Trader.create!(
  :first_name => 'Sticks',
  :last_name => 'Stones',
  :email => '1@10.com',
  :password => 'blargh',
  :sprightly => true
)

@trader10 = Trader.create!(
  :first_name => 'Darth',
  :last_name => 'Vader',
  :email => '1@11.com',
  :password => 'blargh',
  :sprightly => true
)

@trader11 = Trader.create!(
  :first_name => 'Enterprise',
  :last_name => 'A',
  :email => '1@12.com',
  :password => 'blargh',
  :sprightly => true
)

@trader12 = Trader.create!(
  :first_name => 'Channel',
  :last_name => 'Five',
  :email => '1@13.com',
  :password => 'blargh',
  :sprightly => true
)

@trader13 = Trader.create!(
  :first_name => 'Welcome',
  :last_name => 'to Zombocom',
  :email => '1@14.com',
  :password => 'blargh',
  :sprightly => true
)

@trader14 = Trader.create!(
  :first_name => 'Nazi',
  :last_name => 'Gold',
  :email => '1@15.com',
  :password => 'blargh',
  :sprightly => true
)

@trader15 = Trader.create!(
  :first_name => 'Customers',
  :last_name => 'Run!',
  :email => '1@16.com',
  :password => 'blargh',
  :sprightly => true
)

@trader16 = Trader.create!(
  :first_name => 'Warp Nine',
  :last_name => 'Engage',
  :email => '1@17.com',
  :password => 'blargh',
  :sprightly => true
)

@trader17 = Trader.create!(
  :first_name => 'First',
  :last_name => 'Class',
  :email => '1@18.com',
  :password => 'blargh',
  :sprightly => true
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
  :description => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ut sollicitudin elit. Pellentesque varius ipsum eu metus faucibus facilisis. Vivamus facilisis, ante eget ullamcorper feugiat, arcu velit lobortis erat, non consequat enim nibh sit amet purus. Praesent sapien nulla, lacinia ac consequat sed, auctor eu purus. Aliquam erat volutpat. Suspendisse in mi nulla. Fusce laoreet, justo in adipiscing posuere, ante risus porta nisl, id porta orci dui non enim. Pellentesque vitae nisl eu lorem fermentum fermentum vel ac turpis. Nunc tempor leo et metus ullamcorper fringilla. Cras porttitor sapien eget nibh porta in laoreet sapien elementum. Integer nec orci mauris, ac imperdiet massa. Aliquam tristique venenatis neque, aliquet fermentum lorem aliquam id. Suspendisse egestas nisl non tellus mollis tristique. Vivamus interdum odio id ipsum tincidunt hendrerit. Duis ac nulla vel mauris fringilla mollis quis non elit. Duis nisi risus, sodales sit amet pharetra at, luctus tempus dui. Donec eu augue risus, eu vestibulum turpis. Maecenas rhoncus, orci at luctus facilisis, nunc arcu pulvinar massa, sit amet porta eros nulla quis risus. Vestibulum sem lectus, tincidunt sed tincidunt interdum, euismod porta metus.

Curabitur elementum, ipsum id condimentum placerat, sapien orci condimentum nisi, in malesuada mauris est sed mauris. In non lobortis neque. Etiam gravida augue nec quam commodo venenatis. Fusce fermentum sagittis augue non tempor. Vestibulum hendrerit, tortor in sagittis adipiscing, dui nulla scelerisque dolor, at venenatis lacus massa non felis. Nulla facilisis lobortis nisl, ut convallis lacus venenatis non. Suspendisse id nunc nec lectus fringilla malesuada ut vel velit. Fusce vestibulum venenatis velit a blandit. Donec quam lacus, placerat nec tempus et, posuere et neque. Sed hendrerit, purus quis imperdiet tristique, lectus nisl venenatis sapien, sit amet commodo quam ante eu arcu. Suspendisse sit amet arcu vel nunc laoreet convallis vitae quis tortor. Phasellus nisl risus, porttitor et pretium laoreet, suscipit a tellus. Fusce quis nunc vel tellus elementum sollicitudin. Vestibulum auctor neque eget dolor lobortis ultricies.

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada lobortis urna, sed rhoncus dolor congue sed. Nam luctus scelerisque tortor ac dignissim. Mauris congue varius eros, non ultricies purus dapibus in. Duis dui quam, sodales sit amet semper eu, iaculis sodales massa. Cras sagittis aliquet sapien, vitae rhoncus leo tempus id. Suspendisse in justo a nisl congue viverra. Sed vestibulum odio et mauris ornare pretium. Suspendisse sit amet nunc ligula, ut commodo massa. Morbi ut ante sed nisl lobortis tempus a et nisi. Maecenas eu odio metus, eu aliquet dui. Morbi id porta elit. Vivamus nisl est, feugiat ut lobortis sit amet, molestie vitae nunc.

Quisque at pharetra magna. Proin facilisis tincidunt dignissim. Fusce eget augue lacus, sit amet dignissim massa. Quisque suscipit varius tristique. Vivamus eget justo odio, euismod aliquet tortor. Donec libero felis, aliquet id interdum in, faucibus id magna. Maecenas pulvinar adipiscing odio in molestie. Vivamus risus nisl, hendrerit et tincidunt at, volutpat quis erat. Aliquam placerat venenatis libero, sit amet molestie felis commodo sed. Nullam ornare dui et nulla pellentesque commodo. Ut sed enim sit amet diam semper vehicula cursus quis diam. Maecenas in velit ligula, ac euismod diam. Donec sollicitudin, leo ut suscipit faucibus, neque est ornare nunc, sed adipiscing nisl tortor sed enim. Sed sollicitudin, turpis ac aliquam ullamcorper, ipsum urna dictum risus, vel posuere leo nisi ut dolor.

Curabitur porttitor auctor lacinia. Donec eu enim lacus. Nulla sit amet mi non nulla accumsan eleifend vitae id neque. Vestibulum luctus turpis et enim ullamcorper at adipiscing ligula vestibulum. Praesent neque nunc, sodales ac molestie vitae, placerat et lorem. Quisque dapibus consequat purus, eget viverra dolor viverra a. Sed semper interdum justo, at eleifend quam tincidunt semper. Praesent convallis leo pellentesque odio vulputate quis euismod nisi imperdiet. Donec est urna, pretium lacinia facilisis vitae, elementum ut erat. Aliquam enim nibh, sagittis ut condimentum id, volutpat nec urna. Donec odio enim, rhoncus eget sollicitudin a, porttitor in felis. Nulla molestie sodales orci, at placerat lacus aliquet ac. Donec pretium lorem facilisis nisi bibendum lobortis. Vivamus a leo dolor. Aenean placerat, neque vel mattis dictum, nunc odio tincidunt mauris, sed sodales ipsum nisi sit amet massa. Sed mi nunc, placerat id gravida sit amet, vulputate eget mauris. Maecenas sit amet justo nec nisl consequat tincidunt.",
  :customer => @customer1,
  :trader => @trader1,
  :address => @address1
)

@review1 = Review.create!(
  :title => 'Review 1 title',
  :description => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ut sollicitudin elit. Pellentesque varius ipsum eu metus faucibus facilisis. Vivamus facilisis, ante eget ullamcorper feugiat, arcu velit lobortis erat, non consequat enim nibh sit amet purus. Praesent sapien nulla, lacinia ac consequat sed, auctor eu purus. Aliquam erat volutpat. Suspendisse in mi nulla. Fusce laoreet, justo in adipiscing posuere, ante risus porta nisl, id porta orci dui non enim. Pellentesque vitae nisl eu lorem fermentum fermentum vel ac turpis. Nunc tempor leo et metus ullamcorper fringilla. Cras porttitor sapien eget nibh porta in laoreet sapien elementum. Integer nec orci mauris, ac imperdiet massa. Aliquam tristique venenatis neque, aliquet fermentum lorem aliquam id. Suspendisse egestas nisl non tellus mollis tristique. Vivamus interdum odio id ipsum tincidunt hendrerit. Duis ac nulla vel mauris fringilla mollis quis non elit. Duis nisi risus, sodales sit amet pharetra at, luctus tempus dui. Donec eu augue risus, eu vestibulum turpis. Maecenas rhoncus, orci at luctus facilisis, nunc arcu pulvinar massa, sit amet porta eros nulla quis risus. Vestibulum sem lectus, tincidunt sed tincidunt interdum, euismod porta metus.

Curabitur elementum, ipsum id condimentum placerat, sapien orci condimentum nisi, in malesuada mauris est sed mauris. In non lobortis neque. Etiam gravida augue nec quam commodo venenatis. Fusce fermentum sagittis augue non tempor. Vestibulum hendrerit, tortor in sagittis adipiscing, dui nulla scelerisque dolor, at venenatis lacus massa non felis. Nulla facilisis lobortis nisl, ut convallis lacus venenatis non. Suspendisse id nunc nec lectus fringilla malesuada ut vel velit. Fusce vestibulum venenatis velit a blandit. Donec quam lacus, placerat nec tempus et, posuere et neque. Sed hendrerit, purus quis imperdiet tristique, lectus nisl venenatis sapien, sit amet commodo quam ante eu arcu. Suspendisse sit amet arcu vel nunc laoreet convallis vitae quis tortor. Phasellus nisl risus, porttitor et pretium laoreet, suscipit a tellus. Fusce quis nunc vel tellus elementum sollicitudin. Vestibulum auctor neque eget dolor lobortis ultricies.

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada lobortis urna, sed rhoncus dolor congue sed. Nam luctus scelerisque tortor ac dignissim. Mauris congue varius eros, non ultricies purus dapibus in. Duis dui quam, sodales sit amet semper eu, iaculis sodales massa. Cras sagittis aliquet sapien, vitae rhoncus leo tempus id. Suspendisse in justo a nisl congue viverra. Sed vestibulum odio et mauris ornare pretium. Suspendisse sit amet nunc ligula, ut commodo massa. Morbi ut ante sed nisl lobortis tempus a et nisi. Maecenas eu odio metus, eu aliquet dui. Morbi id porta elit. Vivamus nisl est, feugiat ut lobortis sit amet, molestie vitae nunc.

Quisque at pharetra magna. Proin facilisis tincidunt dignissim. Fusce eget augue lacus, sit amet dignissim massa. Quisque suscipit varius tristique. Vivamus eget justo odio, euismod aliquet tortor. Donec libero felis, aliquet id interdum in, faucibus id magna. Maecenas pulvinar adipiscing odio in molestie. Vivamus risus nisl, hendrerit et tincidunt at, volutpat quis erat. Aliquam placerat venenatis libero, sit amet molestie felis commodo sed. Nullam ornare dui et nulla pellentesque commodo. Ut sed enim sit amet diam semper vehicula cursus quis diam. Maecenas in velit ligula, ac euismod diam. Donec sollicitudin, leo ut suscipit faucibus, neque est ornare nunc, sed adipiscing nisl tortor sed enim. Sed sollicitudin, turpis ac aliquam ullamcorper, ipsum urna dictum risus, vel posuere leo nisi ut dolor.

Curabitur porttitor auctor lacinia. Donec eu enim lacus. Nulla sit amet mi non nulla accumsan eleifend vitae id neque. Vestibulum luctus turpis et enim ullamcorper at adipiscing ligula vestibulum. Praesent neque nunc, sodales ac molestie vitae, placerat et lorem. Quisque dapibus consequat purus, eget viverra dolor viverra a. Sed semper interdum justo, at eleifend quam tincidunt semper. Praesent convallis leo pellentesque odio vulputate quis euismod nisi imperdiet. Donec est urna, pretium lacinia facilisis vitae, elementum ut erat. Aliquam enim nibh, sagittis ut condimentum id, volutpat nec urna. Donec odio enim, rhoncus eget sollicitudin a, porttitor in felis. Nulla molestie sodales orci, at placerat lacus aliquet ac. Donec pretium lorem facilisis nisi bibendum lobortis. Vivamus a leo dolor. Aenean placerat, neque vel mattis dictum, nunc odio tincidunt mauris, sed sodales ipsum nisi sit amet massa. Sed mi nunc, placerat id gravida sit amet, vulputate eget mauris. Maecenas sit amet justo nec nisl consequat tincidunt.",
  :mark => 3,
  :reviewer => @customer1,
  :reviewable => @job1
)

@review2 = Review.create!(
  :title => 'Review 2 title',
  :description => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ut sollicitudin elit. Pellentesque varius ipsum eu metus faucibus facilisis. Vivamus facilisis, ante eget ullamcorper feugiat, arcu velit lobortis erat, non consequat enim nibh sit amet purus. Praesent sapien nulla, lacinia ac consequat sed, auctor eu purus. Aliquam erat volutpat. Suspendisse in mi nulla. Fusce laoreet, justo in adipiscing posuere, ante risus porta nisl, id porta orci dui non enim. Pellentesque vitae nisl eu lorem fermentum fermentum vel ac turpis. Nunc tempor leo et metus ullamcorper fringilla. Cras porttitor sapien eget nibh porta in laoreet sapien elementum. Integer nec orci mauris, ac imperdiet massa. Aliquam tristique venenatis neque, aliquet fermentum lorem aliquam id. Suspendisse egestas nisl non tellus mollis tristique. Vivamus interdum odio id ipsum tincidunt hendrerit. Duis ac nulla vel mauris fringilla mollis quis non elit. Duis nisi risus, sodales sit amet pharetra at, luctus tempus dui. Donec eu augue risus, eu vestibulum turpis. Maecenas rhoncus, orci at luctus facilisis, nunc arcu pulvinar massa, sit amet porta eros nulla quis risus. Vestibulum sem lectus, tincidunt sed tincidunt interdum, euismod porta metus.

Curabitur elementum, ipsum id condimentum placerat, sapien orci condimentum nisi, in malesuada mauris est sed mauris. In non lobortis neque. Etiam gravida augue nec quam commodo venenatis. Fusce fermentum sagittis augue non tempor. Vestibulum hendrerit, tortor in sagittis adipiscing, dui nulla scelerisque dolor, at venenatis lacus massa non felis. Nulla facilisis lobortis nisl, ut convallis lacus venenatis non. Suspendisse id nunc nec lectus fringilla malesuada ut vel velit. Fusce vestibulum venenatis velit a blandit. Donec quam lacus, placerat nec tempus et, posuere et neque. Sed hendrerit, purus quis imperdiet tristique, lectus nisl venenatis sapien, sit amet commodo quam ante eu arcu. Suspendisse sit amet arcu vel nunc laoreet convallis vitae quis tortor. Phasellus nisl risus, porttitor et pretium laoreet, suscipit a tellus. Fusce quis nunc vel tellus elementum sollicitudin. Vestibulum auctor neque eget dolor lobortis ultricies.

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada lobortis urna, sed rhoncus dolor congue sed. Nam luctus scelerisque tortor ac dignissim. Mauris congue varius eros, non ultricies purus dapibus in. Duis dui quam, sodales sit amet semper eu, iaculis sodales massa. Cras sagittis aliquet sapien, vitae rhoncus leo tempus id. Suspendisse in justo a nisl congue viverra. Sed vestibulum odio et mauris ornare pretium. Suspendisse sit amet nunc ligula, ut commodo massa. Morbi ut ante sed nisl lobortis tempus a et nisi. Maecenas eu odio metus, eu aliquet dui. Morbi id porta elit. Vivamus nisl est, feugiat ut lobortis sit amet, molestie vitae nunc.

Quisque at pharetra magna. Proin facilisis tincidunt dignissim. Fusce eget augue lacus, sit amet dignissim massa. Quisque suscipit varius tristique. Vivamus eget justo odio, euismod aliquet tortor. Donec libero felis, aliquet id interdum in, faucibus id magna. Maecenas pulvinar adipiscing odio in molestie. Vivamus risus nisl, hendrerit et tincidunt at, volutpat quis erat. Aliquam placerat venenatis libero, sit amet molestie felis commodo sed. Nullam ornare dui et nulla pellentesque commodo. Ut sed enim sit amet diam semper vehicula cursus quis diam. Maecenas in velit ligula, ac euismod diam. Donec sollicitudin, leo ut suscipit faucibus, neque est ornare nunc, sed adipiscing nisl tortor sed enim. Sed sollicitudin, turpis ac aliquam ullamcorper, ipsum urna dictum risus, vel posuere leo nisi ut dolor.

Curabitur porttitor auctor lacinia. Donec eu enim lacus. Nulla sit amet mi non nulla accumsan eleifend vitae id neque. Vestibulum luctus turpis et enim ullamcorper at adipiscing ligula vestibulum. Praesent neque nunc, sodales ac molestie vitae, placerat et lorem. Quisque dapibus consequat purus, eget viverra dolor viverra a. Sed semper interdum justo, at eleifend quam tincidunt semper. Praesent convallis leo pellentesque odio vulputate quis euismod nisi imperdiet. Donec est urna, pretium lacinia facilisis vitae, elementum ut erat. Aliquam enim nibh, sagittis ut condimentum id, volutpat nec urna. Donec odio enim, rhoncus eget sollicitudin a, porttitor in felis. Nulla molestie sodales orci, at placerat lacus aliquet ac. Donec pretium lorem facilisis nisi bibendum lobortis. Vivamus a leo dolor. Aenean placerat, neque vel mattis dictum, nunc odio tincidunt mauris, sed sodales ipsum nisi sit amet massa. Sed mi nunc, placerat id gravida sit amet, vulputate eget mauris. Maecenas sit amet justo nec nisl consequat tincidunt.",
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
  :description => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ut sollicitudin elit. Pellentesque varius ipsum eu metus faucibus facilisis. Vivamus facilisis, ante eget ullamcorper feugiat, arcu velit lobortis erat, non consequat enim nibh sit amet purus. Praesent sapien nulla, lacinia ac consequat sed, auctor eu purus. Aliquam erat volutpat. Suspendisse in mi nulla. Fusce laoreet, justo in adipiscing posuere, ante risus porta nisl, id porta orci dui non enim. Pellentesque vitae nisl eu lorem fermentum fermentum vel ac turpis. Nunc tempor leo et metus ullamcorper fringilla. Cras porttitor sapien eget nibh porta in laoreet sapien elementum. Integer nec orci mauris, ac imperdiet massa. Aliquam tristique venenatis neque, aliquet fermentum lorem aliquam id. Suspendisse egestas nisl non tellus mollis tristique. Vivamus interdum odio id ipsum tincidunt hendrerit. Duis ac nulla vel mauris fringilla mollis quis non elit. Duis nisi risus, sodales sit amet pharetra at, luctus tempus dui. Donec eu augue risus, eu vestibulum turpis. Maecenas rhoncus, orci at luctus facilisis, nunc arcu pulvinar massa, sit amet porta eros nulla quis risus. Vestibulum sem lectus, tincidunt sed tincidunt interdum, euismod porta metus.

Curabitur elementum, ipsum id condimentum placerat, sapien orci condimentum nisi, in malesuada mauris est sed mauris. In non lobortis neque. Etiam gravida augue nec quam commodo venenatis. Fusce fermentum sagittis augue non tempor. Vestibulum hendrerit, tortor in sagittis adipiscing, dui nulla scelerisque dolor, at venenatis lacus massa non felis. Nulla facilisis lobortis nisl, ut convallis lacus venenatis non. Suspendisse id nunc nec lectus fringilla malesuada ut vel velit. Fusce vestibulum venenatis velit a blandit. Donec quam lacus, placerat nec tempus et, posuere et neque. Sed hendrerit, purus quis imperdiet tristique, lectus nisl venenatis sapien, sit amet commodo quam ante eu arcu. Suspendisse sit amet arcu vel nunc laoreet convallis vitae quis tortor. Phasellus nisl risus, porttitor et pretium laoreet, suscipit a tellus. Fusce quis nunc vel tellus elementum sollicitudin. Vestibulum auctor neque eget dolor lobortis ultricies.

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada lobortis urna, sed rhoncus dolor congue sed. Nam luctus scelerisque tortor ac dignissim. Mauris congue varius eros, non ultricies purus dapibus in. Duis dui quam, sodales sit amet semper eu, iaculis sodales massa. Cras sagittis aliquet sapien, vitae rhoncus leo tempus id. Suspendisse in justo a nisl congue viverra. Sed vestibulum odio et mauris ornare pretium. Suspendisse sit amet nunc ligula, ut commodo massa. Morbi ut ante sed nisl lobortis tempus a et nisi. Maecenas eu odio metus, eu aliquet dui. Morbi id porta elit. Vivamus nisl est, feugiat ut lobortis sit amet, molestie vitae nunc.

Quisque at pharetra magna. Proin facilisis tincidunt dignissim. Fusce eget augue lacus, sit amet dignissim massa. Quisque suscipit varius tristique. Vivamus eget justo odio, euismod aliquet tortor. Donec libero felis, aliquet id interdum in, faucibus id magna. Maecenas pulvinar adipiscing odio in molestie. Vivamus risus nisl, hendrerit et tincidunt at, volutpat quis erat. Aliquam placerat venenatis libero, sit amet molestie felis commodo sed. Nullam ornare dui et nulla pellentesque commodo. Ut sed enim sit amet diam semper vehicula cursus quis diam. Maecenas in velit ligula, ac euismod diam. Donec sollicitudin, leo ut suscipit faucibus, neque est ornare nunc, sed adipiscing nisl tortor sed enim. Sed sollicitudin, turpis ac aliquam ullamcorper, ipsum urna dictum risus, vel posuere leo nisi ut dolor.

Curabitur porttitor auctor lacinia. Donec eu enim lacus. Nulla sit amet mi non nulla accumsan eleifend vitae id neque. Vestibulum luctus turpis et enim ullamcorper at adipiscing ligula vestibulum. Praesent neque nunc, sodales ac molestie vitae, placerat et lorem. Quisque dapibus consequat purus, eget viverra dolor viverra a. Sed semper interdum justo, at eleifend quam tincidunt semper. Praesent convallis leo pellentesque odio vulputate quis euismod nisi imperdiet. Donec est urna, pretium lacinia facilisis vitae, elementum ut erat. Aliquam enim nibh, sagittis ut condimentum id, volutpat nec urna. Donec odio enim, rhoncus eget sollicitudin a, porttitor in felis. Nulla molestie sodales orci, at placerat lacus aliquet ac. Donec pretium lorem facilisis nisi bibendum lobortis. Vivamus a leo dolor. Aenean placerat, neque vel mattis dictum, nunc odio tincidunt mauris, sed sodales ipsum nisi sit amet massa. Sed mi nunc, placerat id gravida sit amet, vulputate eget mauris. Maecenas sit amet justo nec nisl consequat tincidunt.",
  :customer => @customer2,
  :trader => @trader2,
  :address => @address2
)

@review3 = Review.create!(
  :title => 'Review 3 title',
  :description => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ut sollicitudin elit. Pellentesque varius ipsum eu metus faucibus facilisis. Vivamus facilisis, ante eget ullamcorper feugiat, arcu velit lobortis erat, non consequat enim nibh sit amet purus. Praesent sapien nulla, lacinia ac consequat sed, auctor eu purus. Aliquam erat volutpat. Suspendisse in mi nulla. Fusce laoreet, justo in adipiscing posuere, ante risus porta nisl, id porta orci dui non enim. Pellentesque vitae nisl eu lorem fermentum fermentum vel ac turpis. Nunc tempor leo et metus ullamcorper fringilla. Cras porttitor sapien eget nibh porta in laoreet sapien elementum. Integer nec orci mauris, ac imperdiet massa. Aliquam tristique venenatis neque, aliquet fermentum lorem aliquam id. Suspendisse egestas nisl non tellus mollis tristique. Vivamus interdum odio id ipsum tincidunt hendrerit. Duis ac nulla vel mauris fringilla mollis quis non elit. Duis nisi risus, sodales sit amet pharetra at, luctus tempus dui. Donec eu augue risus, eu vestibulum turpis. Maecenas rhoncus, orci at luctus facilisis, nunc arcu pulvinar massa, sit amet porta eros nulla quis risus. Vestibulum sem lectus, tincidunt sed tincidunt interdum, euismod porta metus.

Curabitur elementum, ipsum id condimentum placerat, sapien orci condimentum nisi, in malesuada mauris est sed mauris. In non lobortis neque. Etiam gravida augue nec quam commodo venenatis. Fusce fermentum sagittis augue non tempor. Vestibulum hendrerit, tortor in sagittis adipiscing, dui nulla scelerisque dolor, at venenatis lacus massa non felis. Nulla facilisis lobortis nisl, ut convallis lacus venenatis non. Suspendisse id nunc nec lectus fringilla malesuada ut vel velit. Fusce vestibulum venenatis velit a blandit. Donec quam lacus, placerat nec tempus et, posuere et neque. Sed hendrerit, purus quis imperdiet tristique, lectus nisl venenatis sapien, sit amet commodo quam ante eu arcu. Suspendisse sit amet arcu vel nunc laoreet convallis vitae quis tortor. Phasellus nisl risus, porttitor et pretium laoreet, suscipit a tellus. Fusce quis nunc vel tellus elementum sollicitudin. Vestibulum auctor neque eget dolor lobortis ultricies.

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada lobortis urna, sed rhoncus dolor congue sed. Nam luctus scelerisque tortor ac dignissim. Mauris congue varius eros, non ultricies purus dapibus in. Duis dui quam, sodales sit amet semper eu, iaculis sodales massa. Cras sagittis aliquet sapien, vitae rhoncus leo tempus id. Suspendisse in justo a nisl congue viverra. Sed vestibulum odio et mauris ornare pretium. Suspendisse sit amet nunc ligula, ut commodo massa. Morbi ut ante sed nisl lobortis tempus a et nisi. Maecenas eu odio metus, eu aliquet dui. Morbi id porta elit. Vivamus nisl est, feugiat ut lobortis sit amet, molestie vitae nunc.

Quisque at pharetra magna. Proin facilisis tincidunt dignissim. Fusce eget augue lacus, sit amet dignissim massa. Quisque suscipit varius tristique. Vivamus eget justo odio, euismod aliquet tortor. Donec libero felis, aliquet id interdum in, faucibus id magna. Maecenas pulvinar adipiscing odio in molestie. Vivamus risus nisl, hendrerit et tincidunt at, volutpat quis erat. Aliquam placerat venenatis libero, sit amet molestie felis commodo sed. Nullam ornare dui et nulla pellentesque commodo. Ut sed enim sit amet diam semper vehicula cursus quis diam. Maecenas in velit ligula, ac euismod diam. Donec sollicitudin, leo ut suscipit faucibus, neque est ornare nunc, sed adipiscing nisl tortor sed enim. Sed sollicitudin, turpis ac aliquam ullamcorper, ipsum urna dictum risus, vel posuere leo nisi ut dolor.

Curabitur porttitor auctor lacinia. Donec eu enim lacus. Nulla sit amet mi non nulla accumsan eleifend vitae id neque. Vestibulum luctus turpis et enim ullamcorper at adipiscing ligula vestibulum. Praesent neque nunc, sodales ac molestie vitae, placerat et lorem. Quisque dapibus consequat purus, eget viverra dolor viverra a. Sed semper interdum justo, at eleifend quam tincidunt semper. Praesent convallis leo pellentesque odio vulputate quis euismod nisi imperdiet. Donec est urna, pretium lacinia facilisis vitae, elementum ut erat. Aliquam enim nibh, sagittis ut condimentum id, volutpat nec urna. Donec odio enim, rhoncus eget sollicitudin a, porttitor in felis. Nulla molestie sodales orci, at placerat lacus aliquet ac. Donec pretium lorem facilisis nisi bibendum lobortis. Vivamus a leo dolor. Aenean placerat, neque vel mattis dictum, nunc odio tincidunt mauris, sed sodales ipsum nisi sit amet massa. Sed mi nunc, placerat id gravida sit amet, vulputate eget mauris. Maecenas sit amet justo nec nisl consequat tincidunt.",
  :mark => 2,
  :reviewer => @customer2,
  :reviewable => @job2
)

@review4 = Review.create!(
  :title => 'Review 4 title',
  :description => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ut sollicitudin elit. Pellentesque varius ipsum eu metus faucibus facilisis. Vivamus facilisis, ante eget ullamcorper feugiat, arcu velit lobortis erat, non consequat enim nibh sit amet purus. Praesent sapien nulla, lacinia ac consequat sed, auctor eu purus. Aliquam erat volutpat. Suspendisse in mi nulla. Fusce laoreet, justo in adipiscing posuere, ante risus porta nisl, id porta orci dui non enim. Pellentesque vitae nisl eu lorem fermentum fermentum vel ac turpis. Nunc tempor leo et metus ullamcorper fringilla. Cras porttitor sapien eget nibh porta in laoreet sapien elementum. Integer nec orci mauris, ac imperdiet massa. Aliquam tristique venenatis neque, aliquet fermentum lorem aliquam id. Suspendisse egestas nisl non tellus mollis tristique. Vivamus interdum odio id ipsum tincidunt hendrerit. Duis ac nulla vel mauris fringilla mollis quis non elit. Duis nisi risus, sodales sit amet pharetra at, luctus tempus dui. Donec eu augue risus, eu vestibulum turpis. Maecenas rhoncus, orci at luctus facilisis, nunc arcu pulvinar massa, sit amet porta eros nulla quis risus. Vestibulum sem lectus, tincidunt sed tincidunt interdum, euismod porta metus.

Curabitur elementum, ipsum id condimentum placerat, sapien orci condimentum nisi, in malesuada mauris est sed mauris. In non lobortis neque. Etiam gravida augue nec quam commodo venenatis. Fusce fermentum sagittis augue non tempor. Vestibulum hendrerit, tortor in sagittis adipiscing, dui nulla scelerisque dolor, at venenatis lacus massa non felis. Nulla facilisis lobortis nisl, ut convallis lacus venenatis non. Suspendisse id nunc nec lectus fringilla malesuada ut vel velit. Fusce vestibulum venenatis velit a blandit. Donec quam lacus, placerat nec tempus et, posuere et neque. Sed hendrerit, purus quis imperdiet tristique, lectus nisl venenatis sapien, sit amet commodo quam ante eu arcu. Suspendisse sit amet arcu vel nunc laoreet convallis vitae quis tortor. Phasellus nisl risus, porttitor et pretium laoreet, suscipit a tellus. Fusce quis nunc vel tellus elementum sollicitudin. Vestibulum auctor neque eget dolor lobortis ultricies.

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada lobortis urna, sed rhoncus dolor congue sed. Nam luctus scelerisque tortor ac dignissim. Mauris congue varius eros, non ultricies purus dapibus in. Duis dui quam, sodales sit amet semper eu, iaculis sodales massa. Cras sagittis aliquet sapien, vitae rhoncus leo tempus id. Suspendisse in justo a nisl congue viverra. Sed vestibulum odio et mauris ornare pretium. Suspendisse sit amet nunc ligula, ut commodo massa. Morbi ut ante sed nisl lobortis tempus a et nisi. Maecenas eu odio metus, eu aliquet dui. Morbi id porta elit. Vivamus nisl est, feugiat ut lobortis sit amet, molestie vitae nunc.

Quisque at pharetra magna. Proin facilisis tincidunt dignissim. Fusce eget augue lacus, sit amet dignissim massa. Quisque suscipit varius tristique. Vivamus eget justo odio, euismod aliquet tortor. Donec libero felis, aliquet id interdum in, faucibus id magna. Maecenas pulvinar adipiscing odio in molestie. Vivamus risus nisl, hendrerit et tincidunt at, volutpat quis erat. Aliquam placerat venenatis libero, sit amet molestie felis commodo sed. Nullam ornare dui et nulla pellentesque commodo. Ut sed enim sit amet diam semper vehicula cursus quis diam. Maecenas in velit ligula, ac euismod diam. Donec sollicitudin, leo ut suscipit faucibus, neque est ornare nunc, sed adipiscing nisl tortor sed enim. Sed sollicitudin, turpis ac aliquam ullamcorper, ipsum urna dictum risus, vel posuere leo nisi ut dolor.

Curabitur porttitor auctor lacinia. Donec eu enim lacus. Nulla sit amet mi non nulla accumsan eleifend vitae id neque. Vestibulum luctus turpis et enim ullamcorper at adipiscing ligula vestibulum. Praesent neque nunc, sodales ac molestie vitae, placerat et lorem. Quisque dapibus consequat purus, eget viverra dolor viverra a. Sed semper interdum justo, at eleifend quam tincidunt semper. Praesent convallis leo pellentesque odio vulputate quis euismod nisi imperdiet. Donec est urna, pretium lacinia facilisis vitae, elementum ut erat. Aliquam enim nibh, sagittis ut condimentum id, volutpat nec urna. Donec odio enim, rhoncus eget sollicitudin a, porttitor in felis. Nulla molestie sodales orci, at placerat lacus aliquet ac. Donec pretium lorem facilisis nisi bibendum lobortis. Vivamus a leo dolor. Aenean placerat, neque vel mattis dictum, nunc odio tincidunt mauris, sed sodales ipsum nisi sit amet massa. Sed mi nunc, placerat id gravida sit amet, vulputate eget mauris. Maecenas sit amet justo nec nisl consequat tincidunt.",
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
  :description => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ut sollicitudin elit. Pellentesque varius ipsum eu metus faucibus facilisis. Vivamus facilisis, ante eget ullamcorper feugiat, arcu velit lobortis erat, non consequat enim nibh sit amet purus. Praesent sapien nulla, lacinia ac consequat sed, auctor eu purus. Aliquam erat volutpat. Suspendisse in mi nulla. Fusce laoreet, justo in adipiscing posuere, ante risus porta nisl, id porta orci dui non enim. Pellentesque vitae nisl eu lorem fermentum fermentum vel ac turpis. Nunc tempor leo et metus ullamcorper fringilla. Cras porttitor sapien eget nibh porta in laoreet sapien elementum. Integer nec orci mauris, ac imperdiet massa. Aliquam tristique venenatis neque, aliquet fermentum lorem aliquam id. Suspendisse egestas nisl non tellus mollis tristique. Vivamus interdum odio id ipsum tincidunt hendrerit. Duis ac nulla vel mauris fringilla mollis quis non elit. Duis nisi risus, sodales sit amet pharetra at, luctus tempus dui. Donec eu augue risus, eu vestibulum turpis. Maecenas rhoncus, orci at luctus facilisis, nunc arcu pulvinar massa, sit amet porta eros nulla quis risus. Vestibulum sem lectus, tincidunt sed tincidunt interdum, euismod porta metus.

Curabitur elementum, ipsum id condimentum placerat, sapien orci condimentum nisi, in malesuada mauris est sed mauris. In non lobortis neque. Etiam gravida augue nec quam commodo venenatis. Fusce fermentum sagittis augue non tempor. Vestibulum hendrerit, tortor in sagittis adipiscing, dui nulla scelerisque dolor, at venenatis lacus massa non felis. Nulla facilisis lobortis nisl, ut convallis lacus venenatis non. Suspendisse id nunc nec lectus fringilla malesuada ut vel velit. Fusce vestibulum venenatis velit a blandit. Donec quam lacus, placerat nec tempus et, posuere et neque. Sed hendrerit, purus quis imperdiet tristique, lectus nisl venenatis sapien, sit amet commodo quam ante eu arcu. Suspendisse sit amet arcu vel nunc laoreet convallis vitae quis tortor. Phasellus nisl risus, porttitor et pretium laoreet, suscipit a tellus. Fusce quis nunc vel tellus elementum sollicitudin. Vestibulum auctor neque eget dolor lobortis ultricies.

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada lobortis urna, sed rhoncus dolor congue sed. Nam luctus scelerisque tortor ac dignissim. Mauris congue varius eros, non ultricies purus dapibus in. Duis dui quam, sodales sit amet semper eu, iaculis sodales massa. Cras sagittis aliquet sapien, vitae rhoncus leo tempus id. Suspendisse in justo a nisl congue viverra. Sed vestibulum odio et mauris ornare pretium. Suspendisse sit amet nunc ligula, ut commodo massa. Morbi ut ante sed nisl lobortis tempus a et nisi. Maecenas eu odio metus, eu aliquet dui. Morbi id porta elit. Vivamus nisl est, feugiat ut lobortis sit amet, molestie vitae nunc.

Quisque at pharetra magna. Proin facilisis tincidunt dignissim. Fusce eget augue lacus, sit amet dignissim massa. Quisque suscipit varius tristique. Vivamus eget justo odio, euismod aliquet tortor. Donec libero felis, aliquet id interdum in, faucibus id magna. Maecenas pulvinar adipiscing odio in molestie. Vivamus risus nisl, hendrerit et tincidunt at, volutpat quis erat. Aliquam placerat venenatis libero, sit amet molestie felis commodo sed. Nullam ornare dui et nulla pellentesque commodo. Ut sed enim sit amet diam semper vehicula cursus quis diam. Maecenas in velit ligula, ac euismod diam. Donec sollicitudin, leo ut suscipit faucibus, neque est ornare nunc, sed adipiscing nisl tortor sed enim. Sed sollicitudin, turpis ac aliquam ullamcorper, ipsum urna dictum risus, vel posuere leo nisi ut dolor.

Curabitur porttitor auctor lacinia. Donec eu enim lacus. Nulla sit amet mi non nulla accumsan eleifend vitae id neque. Vestibulum luctus turpis et enim ullamcorper at adipiscing ligula vestibulum. Praesent neque nunc, sodales ac molestie vitae, placerat et lorem. Quisque dapibus consequat purus, eget viverra dolor viverra a. Sed semper interdum justo, at eleifend quam tincidunt semper. Praesent convallis leo pellentesque odio vulputate quis euismod nisi imperdiet. Donec est urna, pretium lacinia facilisis vitae, elementum ut erat. Aliquam enim nibh, sagittis ut condimentum id, volutpat nec urna. Donec odio enim, rhoncus eget sollicitudin a, porttitor in felis. Nulla molestie sodales orci, at placerat lacus aliquet ac. Donec pretium lorem facilisis nisi bibendum lobortis. Vivamus a leo dolor. Aenean placerat, neque vel mattis dictum, nunc odio tincidunt mauris, sed sodales ipsum nisi sit amet massa. Sed mi nunc, placerat id gravida sit amet, vulputate eget mauris. Maecenas sit amet justo nec nisl consequat tincidunt.",
  :customer => @customer1,
  :trader => @trader1,
  :address => @address3
)

@review5 = Review.create!(
  :title => 'Review 5 title',
  :description => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ut sollicitudin elit. Pellentesque varius ipsum eu metus faucibus facilisis. Vivamus facilisis, ante eget ullamcorper feugiat, arcu velit lobortis erat, non consequat enim nibh sit amet purus. Praesent sapien nulla, lacinia ac consequat sed, auctor eu purus. Aliquam erat volutpat. Suspendisse in mi nulla. Fusce laoreet, justo in adipiscing posuere, ante risus porta nisl, id porta orci dui non enim. Pellentesque vitae nisl eu lorem fermentum fermentum vel ac turpis. Nunc tempor leo et metus ullamcorper fringilla. Cras porttitor sapien eget nibh porta in laoreet sapien elementum. Integer nec orci mauris, ac imperdiet massa. Aliquam tristique venenatis neque, aliquet fermentum lorem aliquam id. Suspendisse egestas nisl non tellus mollis tristique. Vivamus interdum odio id ipsum tincidunt hendrerit. Duis ac nulla vel mauris fringilla mollis quis non elit. Duis nisi risus, sodales sit amet pharetra at, luctus tempus dui. Donec eu augue risus, eu vestibulum turpis. Maecenas rhoncus, orci at luctus facilisis, nunc arcu pulvinar massa, sit amet porta eros nulla quis risus. Vestibulum sem lectus, tincidunt sed tincidunt interdum, euismod porta metus.

Curabitur elementum, ipsum id condimentum placerat, sapien orci condimentum nisi, in malesuada mauris est sed mauris. In non lobortis neque. Etiam gravida augue nec quam commodo venenatis. Fusce fermentum sagittis augue non tempor. Vestibulum hendrerit, tortor in sagittis adipiscing, dui nulla scelerisque dolor, at venenatis lacus massa non felis. Nulla facilisis lobortis nisl, ut convallis lacus venenatis non. Suspendisse id nunc nec lectus fringilla malesuada ut vel velit. Fusce vestibulum venenatis velit a blandit. Donec quam lacus, placerat nec tempus et, posuere et neque. Sed hendrerit, purus quis imperdiet tristique, lectus nisl venenatis sapien, sit amet commodo quam ante eu arcu. Suspendisse sit amet arcu vel nunc laoreet convallis vitae quis tortor. Phasellus nisl risus, porttitor et pretium laoreet, suscipit a tellus. Fusce quis nunc vel tellus elementum sollicitudin. Vestibulum auctor neque eget dolor lobortis ultricies.

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada lobortis urna, sed rhoncus dolor congue sed. Nam luctus scelerisque tortor ac dignissim. Mauris congue varius eros, non ultricies purus dapibus in. Duis dui quam, sodales sit amet semper eu, iaculis sodales massa. Cras sagittis aliquet sapien, vitae rhoncus leo tempus id. Suspendisse in justo a nisl congue viverra. Sed vestibulum odio et mauris ornare pretium. Suspendisse sit amet nunc ligula, ut commodo massa. Morbi ut ante sed nisl lobortis tempus a et nisi. Maecenas eu odio metus, eu aliquet dui. Morbi id porta elit. Vivamus nisl est, feugiat ut lobortis sit amet, molestie vitae nunc.

Quisque at pharetra magna. Proin facilisis tincidunt dignissim. Fusce eget augue lacus, sit amet dignissim massa. Quisque suscipit varius tristique. Vivamus eget justo odio, euismod aliquet tortor. Donec libero felis, aliquet id interdum in, faucibus id magna. Maecenas pulvinar adipiscing odio in molestie. Vivamus risus nisl, hendrerit et tincidunt at, volutpat quis erat. Aliquam placerat venenatis libero, sit amet molestie felis commodo sed. Nullam ornare dui et nulla pellentesque commodo. Ut sed enim sit amet diam semper vehicula cursus quis diam. Maecenas in velit ligula, ac euismod diam. Donec sollicitudin, leo ut suscipit faucibus, neque est ornare nunc, sed adipiscing nisl tortor sed enim. Sed sollicitudin, turpis ac aliquam ullamcorper, ipsum urna dictum risus, vel posuere leo nisi ut dolor.

Curabitur porttitor auctor lacinia. Donec eu enim lacus. Nulla sit amet mi non nulla accumsan eleifend vitae id neque. Vestibulum luctus turpis et enim ullamcorper at adipiscing ligula vestibulum. Praesent neque nunc, sodales ac molestie vitae, placerat et lorem. Quisque dapibus consequat purus, eget viverra dolor viverra a. Sed semper interdum justo, at eleifend quam tincidunt semper. Praesent convallis leo pellentesque odio vulputate quis euismod nisi imperdiet. Donec est urna, pretium lacinia facilisis vitae, elementum ut erat. Aliquam enim nibh, sagittis ut condimentum id, volutpat nec urna. Donec odio enim, rhoncus eget sollicitudin a, porttitor in felis. Nulla molestie sodales orci, at placerat lacus aliquet ac. Donec pretium lorem facilisis nisi bibendum lobortis. Vivamus a leo dolor. Aenean placerat, neque vel mattis dictum, nunc odio tincidunt mauris, sed sodales ipsum nisi sit amet massa. Sed mi nunc, placerat id gravida sit amet, vulputate eget mauris. Maecenas sit amet justo nec nisl consequat tincidunt.",
  :mark => 2,
  :reviewer => @customer1,
  :reviewable => @job3
)

@review6 = Review.create!(
  :title => 'Review 6 title',
  :description => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ut sollicitudin elit. Pellentesque varius ipsum eu metus faucibus facilisis. Vivamus facilisis, ante eget ullamcorper feugiat, arcu velit lobortis erat, non consequat enim nibh sit amet purus. Praesent sapien nulla, lacinia ac consequat sed, auctor eu purus. Aliquam erat volutpat. Suspendisse in mi nulla. Fusce laoreet, justo in adipiscing posuere, ante risus porta nisl, id porta orci dui non enim. Pellentesque vitae nisl eu lorem fermentum fermentum vel ac turpis. Nunc tempor leo et metus ullamcorper fringilla. Cras porttitor sapien eget nibh porta in laoreet sapien elementum. Integer nec orci mauris, ac imperdiet massa. Aliquam tristique venenatis neque, aliquet fermentum lorem aliquam id. Suspendisse egestas nisl non tellus mollis tristique. Vivamus interdum odio id ipsum tincidunt hendrerit. Duis ac nulla vel mauris fringilla mollis quis non elit. Duis nisi risus, sodales sit amet pharetra at, luctus tempus dui. Donec eu augue risus, eu vestibulum turpis. Maecenas rhoncus, orci at luctus facilisis, nunc arcu pulvinar massa, sit amet porta eros nulla quis risus. Vestibulum sem lectus, tincidunt sed tincidunt interdum, euismod porta metus.

Curabitur elementum, ipsum id condimentum placerat, sapien orci condimentum nisi, in malesuada mauris est sed mauris. In non lobortis neque. Etiam gravida augue nec quam commodo venenatis. Fusce fermentum sagittis augue non tempor. Vestibulum hendrerit, tortor in sagittis adipiscing, dui nulla scelerisque dolor, at venenatis lacus massa non felis. Nulla facilisis lobortis nisl, ut convallis lacus venenatis non. Suspendisse id nunc nec lectus fringilla malesuada ut vel velit. Fusce vestibulum venenatis velit a blandit. Donec quam lacus, placerat nec tempus et, posuere et neque. Sed hendrerit, purus quis imperdiet tristique, lectus nisl venenatis sapien, sit amet commodo quam ante eu arcu. Suspendisse sit amet arcu vel nunc laoreet convallis vitae quis tortor. Phasellus nisl risus, porttitor et pretium laoreet, suscipit a tellus. Fusce quis nunc vel tellus elementum sollicitudin. Vestibulum auctor neque eget dolor lobortis ultricies.

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada lobortis urna, sed rhoncus dolor congue sed. Nam luctus scelerisque tortor ac dignissim. Mauris congue varius eros, non ultricies purus dapibus in. Duis dui quam, sodales sit amet semper eu, iaculis sodales massa. Cras sagittis aliquet sapien, vitae rhoncus leo tempus id. Suspendisse in justo a nisl congue viverra. Sed vestibulum odio et mauris ornare pretium. Suspendisse sit amet nunc ligula, ut commodo massa. Morbi ut ante sed nisl lobortis tempus a et nisi. Maecenas eu odio metus, eu aliquet dui. Morbi id porta elit. Vivamus nisl est, feugiat ut lobortis sit amet, molestie vitae nunc.

Quisque at pharetra magna. Proin facilisis tincidunt dignissim. Fusce eget augue lacus, sit amet dignissim massa. Quisque suscipit varius tristique. Vivamus eget justo odio, euismod aliquet tortor. Donec libero felis, aliquet id interdum in, faucibus id magna. Maecenas pulvinar adipiscing odio in molestie. Vivamus risus nisl, hendrerit et tincidunt at, volutpat quis erat. Aliquam placerat venenatis libero, sit amet molestie felis commodo sed. Nullam ornare dui et nulla pellentesque commodo. Ut sed enim sit amet diam semper vehicula cursus quis diam. Maecenas in velit ligula, ac euismod diam. Donec sollicitudin, leo ut suscipit faucibus, neque est ornare nunc, sed adipiscing nisl tortor sed enim. Sed sollicitudin, turpis ac aliquam ullamcorper, ipsum urna dictum risus, vel posuere leo nisi ut dolor.

Curabitur porttitor auctor lacinia. Donec eu enim lacus. Nulla sit amet mi non nulla accumsan eleifend vitae id neque. Vestibulum luctus turpis et enim ullamcorper at adipiscing ligula vestibulum. Praesent neque nunc, sodales ac molestie vitae, placerat et lorem. Quisque dapibus consequat purus, eget viverra dolor viverra a. Sed semper interdum justo, at eleifend quam tincidunt semper. Praesent convallis leo pellentesque odio vulputate quis euismod nisi imperdiet. Donec est urna, pretium lacinia facilisis vitae, elementum ut erat. Aliquam enim nibh, sagittis ut condimentum id, volutpat nec urna. Donec odio enim, rhoncus eget sollicitudin a, porttitor in felis. Nulla molestie sodales orci, at placerat lacus aliquet ac. Donec pretium lorem facilisis nisi bibendum lobortis. Vivamus a leo dolor. Aenean placerat, neque vel mattis dictum, nunc odio tincidunt mauris, sed sodales ipsum nisi sit amet massa. Sed mi nunc, placerat id gravida sit amet, vulputate eget mauris. Maecenas sit amet justo nec nisl consequat tincidunt.",
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
  :description => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ut sollicitudin elit. Pellentesque varius ipsum eu metus faucibus facilisis. Vivamus facilisis, ante eget ullamcorper feugiat, arcu velit lobortis erat, non consequat enim nibh sit amet purus. Praesent sapien nulla, lacinia ac consequat sed, auctor eu purus. Aliquam erat volutpat. Suspendisse in mi nulla. Fusce laoreet, justo in adipiscing posuere, ante risus porta nisl, id porta orci dui non enim. Pellentesque vitae nisl eu lorem fermentum fermentum vel ac turpis. Nunc tempor leo et metus ullamcorper fringilla. Cras porttitor sapien eget nibh porta in laoreet sapien elementum. Integer nec orci mauris, ac imperdiet massa. Aliquam tristique venenatis neque, aliquet fermentum lorem aliquam id. Suspendisse egestas nisl non tellus mollis tristique. Vivamus interdum odio id ipsum tincidunt hendrerit. Duis ac nulla vel mauris fringilla mollis quis non elit. Duis nisi risus, sodales sit amet pharetra at, luctus tempus dui. Donec eu augue risus, eu vestibulum turpis. Maecenas rhoncus, orci at luctus facilisis, nunc arcu pulvinar massa, sit amet porta eros nulla quis risus. Vestibulum sem lectus, tincidunt sed tincidunt interdum, euismod porta metus.

Curabitur elementum, ipsum id condimentum placerat, sapien orci condimentum nisi, in malesuada mauris est sed mauris. In non lobortis neque. Etiam gravida augue nec quam commodo venenatis. Fusce fermentum sagittis augue non tempor. Vestibulum hendrerit, tortor in sagittis adipiscing, dui nulla scelerisque dolor, at venenatis lacus massa non felis. Nulla facilisis lobortis nisl, ut convallis lacus venenatis non. Suspendisse id nunc nec lectus fringilla malesuada ut vel velit. Fusce vestibulum venenatis velit a blandit. Donec quam lacus, placerat nec tempus et, posuere et neque. Sed hendrerit, purus quis imperdiet tristique, lectus nisl venenatis sapien, sit amet commodo quam ante eu arcu. Suspendisse sit amet arcu vel nunc laoreet convallis vitae quis tortor. Phasellus nisl risus, porttitor et pretium laoreet, suscipit a tellus. Fusce quis nunc vel tellus elementum sollicitudin. Vestibulum auctor neque eget dolor lobortis ultricies.

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada lobortis urna, sed rhoncus dolor congue sed. Nam luctus scelerisque tortor ac dignissim. Mauris congue varius eros, non ultricies purus dapibus in. Duis dui quam, sodales sit amet semper eu, iaculis sodales massa. Cras sagittis aliquet sapien, vitae rhoncus leo tempus id. Suspendisse in justo a nisl congue viverra. Sed vestibulum odio et mauris ornare pretium. Suspendisse sit amet nunc ligula, ut commodo massa. Morbi ut ante sed nisl lobortis tempus a et nisi. Maecenas eu odio metus, eu aliquet dui. Morbi id porta elit. Vivamus nisl est, feugiat ut lobortis sit amet, molestie vitae nunc.

Quisque at pharetra magna. Proin facilisis tincidunt dignissim. Fusce eget augue lacus, sit amet dignissim massa. Quisque suscipit varius tristique. Vivamus eget justo odio, euismod aliquet tortor. Donec libero felis, aliquet id interdum in, faucibus id magna. Maecenas pulvinar adipiscing odio in molestie. Vivamus risus nisl, hendrerit et tincidunt at, volutpat quis erat. Aliquam placerat venenatis libero, sit amet molestie felis commodo sed. Nullam ornare dui et nulla pellentesque commodo. Ut sed enim sit amet diam semper vehicula cursus quis diam. Maecenas in velit ligula, ac euismod diam. Donec sollicitudin, leo ut suscipit faucibus, neque est ornare nunc, sed adipiscing nisl tortor sed enim. Sed sollicitudin, turpis ac aliquam ullamcorper, ipsum urna dictum risus, vel posuere leo nisi ut dolor.

Curabitur porttitor auctor lacinia. Donec eu enim lacus. Nulla sit amet mi non nulla accumsan eleifend vitae id neque. Vestibulum luctus turpis et enim ullamcorper at adipiscing ligula vestibulum. Praesent neque nunc, sodales ac molestie vitae, placerat et lorem. Quisque dapibus consequat purus, eget viverra dolor viverra a. Sed semper interdum justo, at eleifend quam tincidunt semper. Praesent convallis leo pellentesque odio vulputate quis euismod nisi imperdiet. Donec est urna, pretium lacinia facilisis vitae, elementum ut erat. Aliquam enim nibh, sagittis ut condimentum id, volutpat nec urna. Donec odio enim, rhoncus eget sollicitudin a, porttitor in felis. Nulla molestie sodales orci, at placerat lacus aliquet ac. Donec pretium lorem facilisis nisi bibendum lobortis. Vivamus a leo dolor. Aenean placerat, neque vel mattis dictum, nunc odio tincidunt mauris, sed sodales ipsum nisi sit amet massa. Sed mi nunc, placerat id gravida sit amet, vulputate eget mauris. Maecenas sit amet justo nec nisl consequat tincidunt.",
  :customer => @customer2,
  :trader => @trader2,
  :address => @address4
)

@review7 = Review.create!(
  :title => 'Review 7 title',
  :description => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ut sollicitudin elit. Pellentesque varius ipsum eu metus faucibus facilisis. Vivamus facilisis, ante eget ullamcorper feugiat, arcu velit lobortis erat, non consequat enim nibh sit amet purus. Praesent sapien nulla, lacinia ac consequat sed, auctor eu purus. Aliquam erat volutpat. Suspendisse in mi nulla. Fusce laoreet, justo in adipiscing posuere, ante risus porta nisl, id porta orci dui non enim. Pellentesque vitae nisl eu lorem fermentum fermentum vel ac turpis. Nunc tempor leo et metus ullamcorper fringilla. Cras porttitor sapien eget nibh porta in laoreet sapien elementum. Integer nec orci mauris, ac imperdiet massa. Aliquam tristique venenatis neque, aliquet fermentum lorem aliquam id. Suspendisse egestas nisl non tellus mollis tristique. Vivamus interdum odio id ipsum tincidunt hendrerit. Duis ac nulla vel mauris fringilla mollis quis non elit. Duis nisi risus, sodales sit amet pharetra at, luctus tempus dui. Donec eu augue risus, eu vestibulum turpis. Maecenas rhoncus, orci at luctus facilisis, nunc arcu pulvinar massa, sit amet porta eros nulla quis risus. Vestibulum sem lectus, tincidunt sed tincidunt interdum, euismod porta metus.

Curabitur elementum, ipsum id condimentum placerat, sapien orci condimentum nisi, in malesuada mauris est sed mauris. In non lobortis neque. Etiam gravida augue nec quam commodo venenatis. Fusce fermentum sagittis augue non tempor. Vestibulum hendrerit, tortor in sagittis adipiscing, dui nulla scelerisque dolor, at venenatis lacus massa non felis. Nulla facilisis lobortis nisl, ut convallis lacus venenatis non. Suspendisse id nunc nec lectus fringilla malesuada ut vel velit. Fusce vestibulum venenatis velit a blandit. Donec quam lacus, placerat nec tempus et, posuere et neque. Sed hendrerit, purus quis imperdiet tristique, lectus nisl venenatis sapien, sit amet commodo quam ante eu arcu. Suspendisse sit amet arcu vel nunc laoreet convallis vitae quis tortor. Phasellus nisl risus, porttitor et pretium laoreet, suscipit a tellus. Fusce quis nunc vel tellus elementum sollicitudin. Vestibulum auctor neque eget dolor lobortis ultricies.

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada lobortis urna, sed rhoncus dolor congue sed. Nam luctus scelerisque tortor ac dignissim. Mauris congue varius eros, non ultricies purus dapibus in. Duis dui quam, sodales sit amet semper eu, iaculis sodales massa. Cras sagittis aliquet sapien, vitae rhoncus leo tempus id. Suspendisse in justo a nisl congue viverra. Sed vestibulum odio et mauris ornare pretium. Suspendisse sit amet nunc ligula, ut commodo massa. Morbi ut ante sed nisl lobortis tempus a et nisi. Maecenas eu odio metus, eu aliquet dui. Morbi id porta elit. Vivamus nisl est, feugiat ut lobortis sit amet, molestie vitae nunc.

Quisque at pharetra magna. Proin facilisis tincidunt dignissim. Fusce eget augue lacus, sit amet dignissim massa. Quisque suscipit varius tristique. Vivamus eget justo odio, euismod aliquet tortor. Donec libero felis, aliquet id interdum in, faucibus id magna. Maecenas pulvinar adipiscing odio in molestie. Vivamus risus nisl, hendrerit et tincidunt at, volutpat quis erat. Aliquam placerat venenatis libero, sit amet molestie felis commodo sed. Nullam ornare dui et nulla pellentesque commodo. Ut sed enim sit amet diam semper vehicula cursus quis diam. Maecenas in velit ligula, ac euismod diam. Donec sollicitudin, leo ut suscipit faucibus, neque est ornare nunc, sed adipiscing nisl tortor sed enim. Sed sollicitudin, turpis ac aliquam ullamcorper, ipsum urna dictum risus, vel posuere leo nisi ut dolor.

Curabitur porttitor auctor lacinia. Donec eu enim lacus. Nulla sit amet mi non nulla accumsan eleifend vitae id neque. Vestibulum luctus turpis et enim ullamcorper at adipiscing ligula vestibulum. Praesent neque nunc, sodales ac molestie vitae, placerat et lorem. Quisque dapibus consequat purus, eget viverra dolor viverra a. Sed semper interdum justo, at eleifend quam tincidunt semper. Praesent convallis leo pellentesque odio vulputate quis euismod nisi imperdiet. Donec est urna, pretium lacinia facilisis vitae, elementum ut erat. Aliquam enim nibh, sagittis ut condimentum id, volutpat nec urna. Donec odio enim, rhoncus eget sollicitudin a, porttitor in felis. Nulla molestie sodales orci, at placerat lacus aliquet ac. Donec pretium lorem facilisis nisi bibendum lobortis. Vivamus a leo dolor. Aenean placerat, neque vel mattis dictum, nunc odio tincidunt mauris, sed sodales ipsum nisi sit amet massa. Sed mi nunc, placerat id gravida sit amet, vulputate eget mauris. Maecenas sit amet justo nec nisl consequat tincidunt.",
  :mark => 5,
  :reviewer => @customer2,
  :reviewable => @job4
)

@review8 = Review.create!(
  :title => 'Review 8 title',
  :description => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ut sollicitudin elit. Pellentesque varius ipsum eu metus faucibus facilisis. Vivamus facilisis, ante eget ullamcorper feugiat, arcu velit lobortis erat, non consequat enim nibh sit amet purus. Praesent sapien nulla, lacinia ac consequat sed, auctor eu purus. Aliquam erat volutpat. Suspendisse in mi nulla. Fusce laoreet, justo in adipiscing posuere, ante risus porta nisl, id porta orci dui non enim. Pellentesque vitae nisl eu lorem fermentum fermentum vel ac turpis. Nunc tempor leo et metus ullamcorper fringilla. Cras porttitor sapien eget nibh porta in laoreet sapien elementum. Integer nec orci mauris, ac imperdiet massa. Aliquam tristique venenatis neque, aliquet fermentum lorem aliquam id. Suspendisse egestas nisl non tellus mollis tristique. Vivamus interdum odio id ipsum tincidunt hendrerit. Duis ac nulla vel mauris fringilla mollis quis non elit. Duis nisi risus, sodales sit amet pharetra at, luctus tempus dui. Donec eu augue risus, eu vestibulum turpis. Maecenas rhoncus, orci at luctus facilisis, nunc arcu pulvinar massa, sit amet porta eros nulla quis risus. Vestibulum sem lectus, tincidunt sed tincidunt interdum, euismod porta metus.

Curabitur elementum, ipsum id condimentum placerat, sapien orci condimentum nisi, in malesuada mauris est sed mauris. In non lobortis neque. Etiam gravida augue nec quam commodo venenatis. Fusce fermentum sagittis augue non tempor. Vestibulum hendrerit, tortor in sagittis adipiscing, dui nulla scelerisque dolor, at venenatis lacus massa non felis. Nulla facilisis lobortis nisl, ut convallis lacus venenatis non. Suspendisse id nunc nec lectus fringilla malesuada ut vel velit. Fusce vestibulum venenatis velit a blandit. Donec quam lacus, placerat nec tempus et, posuere et neque. Sed hendrerit, purus quis imperdiet tristique, lectus nisl venenatis sapien, sit amet commodo quam ante eu arcu. Suspendisse sit amet arcu vel nunc laoreet convallis vitae quis tortor. Phasellus nisl risus, porttitor et pretium laoreet, suscipit a tellus. Fusce quis nunc vel tellus elementum sollicitudin. Vestibulum auctor neque eget dolor lobortis ultricies.

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada lobortis urna, sed rhoncus dolor congue sed. Nam luctus scelerisque tortor ac dignissim. Mauris congue varius eros, non ultricies purus dapibus in. Duis dui quam, sodales sit amet semper eu, iaculis sodales massa. Cras sagittis aliquet sapien, vitae rhoncus leo tempus id. Suspendisse in justo a nisl congue viverra. Sed vestibulum odio et mauris ornare pretium. Suspendisse sit amet nunc ligula, ut commodo massa. Morbi ut ante sed nisl lobortis tempus a et nisi. Maecenas eu odio metus, eu aliquet dui. Morbi id porta elit. Vivamus nisl est, feugiat ut lobortis sit amet, molestie vitae nunc.

Quisque at pharetra magna. Proin facilisis tincidunt dignissim. Fusce eget augue lacus, sit amet dignissim massa. Quisque suscipit varius tristique. Vivamus eget justo odio, euismod aliquet tortor. Donec libero felis, aliquet id interdum in, faucibus id magna. Maecenas pulvinar adipiscing odio in molestie. Vivamus risus nisl, hendrerit et tincidunt at, volutpat quis erat. Aliquam placerat venenatis libero, sit amet molestie felis commodo sed. Nullam ornare dui et nulla pellentesque commodo. Ut sed enim sit amet diam semper vehicula cursus quis diam. Maecenas in velit ligula, ac euismod diam. Donec sollicitudin, leo ut suscipit faucibus, neque est ornare nunc, sed adipiscing nisl tortor sed enim. Sed sollicitudin, turpis ac aliquam ullamcorper, ipsum urna dictum risus, vel posuere leo nisi ut dolor.

Curabitur porttitor auctor lacinia. Donec eu enim lacus. Nulla sit amet mi non nulla accumsan eleifend vitae id neque. Vestibulum luctus turpis et enim ullamcorper at adipiscing ligula vestibulum. Praesent neque nunc, sodales ac molestie vitae, placerat et lorem. Quisque dapibus consequat purus, eget viverra dolor viverra a. Sed semper interdum justo, at eleifend quam tincidunt semper. Praesent convallis leo pellentesque odio vulputate quis euismod nisi imperdiet. Donec est urna, pretium lacinia facilisis vitae, elementum ut erat. Aliquam enim nibh, sagittis ut condimentum id, volutpat nec urna. Donec odio enim, rhoncus eget sollicitudin a, porttitor in felis. Nulla molestie sodales orci, at placerat lacus aliquet ac. Donec pretium lorem facilisis nisi bibendum lobortis. Vivamus a leo dolor. Aenean placerat, neque vel mattis dictum, nunc odio tincidunt mauris, sed sodales ipsum nisi sit amet massa. Sed mi nunc, placerat id gravida sit amet, vulputate eget mauris. Maecenas sit amet justo nec nisl consequat tincidunt.",
  :mark => 5,
  :reviewer => @customer2,
  :reviewable => @trader2
)

@review9 = Review.create!(
  :title => 'Review 8 title',
  :description => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ut sollicitudin elit. Pellentesque varius ipsum eu metus faucibus facilisis. Vivamus facilisis, ante eget ullamcorper feugiat, arcu velit lobortis erat, non consequat enim nibh sit amet purus. Praesent sapien nulla, lacinia ac consequat sed, auctor eu purus. Aliquam erat volutpat. Suspendisse in mi nulla. Fusce laoreet, justo in adipiscing posuere, ante risus porta nisl, id porta orci dui non enim. Pellentesque vitae nisl eu lorem fermentum fermentum vel ac turpis. Nunc tempor leo et metus ullamcorper fringilla. Cras porttitor sapien eget nibh porta in laoreet sapien elementum. Integer nec orci mauris, ac imperdiet massa. Aliquam tristique venenatis neque, aliquet fermentum lorem aliquam id.",
  :mark => 5,
  :reviewer => @customer2,
  :reviewable => @trader2
)

20.times do
  Review.create!(
    :title => 'Review title',
    :description => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ut sollicitudin elit. Pellentesque varius ipsum eu metus faucibus facilisis. Vivamus facilisis, ante eget ullamcorper feugiat, arcu velit lobortis erat, non consequat enim nibh sit amet purus. Praesent sapien nulla, lacinia ac consequat sed, auctor eu purus. Aliquam erat volutpat. Suspendisse in mi nulla. Fusce laoreet, justo in adipiscing posuere, ante risus porta nisl, id porta orci dui non enim. Pellentesque vitae nisl eu lorem fermentum fermentum vel ac turpis. Nunc tempor leo et metus ullamcorper fringilla. Cras porttitor sapien eget nibh porta in laoreet sapien elementum. Integer nec orci mauris, ac imperdiet massa. Aliquam tristique venenatis neque, aliquet fermentum lorem aliquam id.",
    :mark => 4,
    :reviewer => @customer2,
    :reviewable => @trader2
  )
end
