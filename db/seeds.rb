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

@pro1 = Profession.create!(:name => 'Stegosaurus Construction')
@pro2 = Profession.create!(:name => 'Ambulance Juggling')
@pro3 = Profession.create!(:name => 'Titanic Chewing')
@pro4 = Profession.create!(:name => 'Indecision Nonmaking')
@pro5 = Profession.create!(:name => 'Tantrum Fuelling')

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
