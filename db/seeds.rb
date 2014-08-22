Store.destroy_all
Admin.destroy_all
Product.destroy_all


a1 = Admin.create(:first_name => 'Xaun', :last_name => 'Lopez', :email => 'xaun@mail.com', :password => 'Chicken1', :password_confirmation => 'Chicken1')
a2 = Admin.create(:first_name => 'Inspector', :last_name => 'Gadget', :email => 'inspector@mail.com', :password => 'Chicken1', :password_confirmation => 'Chicken1')

s1 = Store.create(:store_name => 'Heaps Of Nikes')
s2 = Store.create(:store_name => 'Illegal Stuff')

p1 = Product.create(:title => 'Air Max 1', :product_type => 'Shoe', :sku => 'X0001', :quantity => 30, :image => 'maxies01.jpg', :price => 100.00, :visibility => true, :description => "Look, just because I don't be givin' no man a foot massage don't make it right for Marsellus to throw Antwone into a glass motherfuckin' house, fuckin' up the way the nigger talks. Motherfucker do that shit to me, he better paralyze my ass, 'cause I'll kill the motherfucker, know what I'm sayin'?")
p2 = Product.create(:title => 'Air Max 2', :product_type => 'Shoe', :sku => 'X0002', :quantity => 30, :image => 'maxies02.jpg', :price => 100.00, :visibility => true, :description => "Look, just because I don't be givin' no man a foot massage don't make it right for Marsellus to throw Antwone into a glass motherfuckin' house, fuckin' up the way the nigger talks. Motherfucker do that shit to me, he better paralyze my ass, 'cause I'll kill the motherfucker, know what I'm sayin'?")
p3 = Product.create(:title => 'Air Max 3', :product_type => 'Shoe', :sku => 'X0003', :quantity => 30, :image => 'maxies03.jpg', :price => 100.00, :visibility => true, :description => "Look, just because I don't be givin' no man a foot massage don't make it right for Marsellus to throw Antwone into a glass motherfuckin' house, fuckin' up the way the nigger talks. Motherfucker do that shit to me, he better paralyze my ass, 'cause I'll kill the motherfucker, know what I'm sayin'?")
p4 = Product.create(:title => 'Air Max 4', :product_type => 'Shoe', :sku => 'X0004', :quantity => 30, :image => 'maxies04.jpg', :price => 100.00, :visibility => true, :description => "Look, just because I don't be givin' no man a foot massage don't make it right for Marsellus to throw Antwone into a glass motherfuckin' house, fuckin' up the way the nigger talks. Motherfucker do that shit to me, he better paralyze my ass, 'cause I'll kill the motherfucker, know what I'm sayin'?")
p5 = Product.create(:title => 'Air Max 5', :product_type => 'Shoe', :sku => 'X0005', :quantity => 30, :image => 'maxies05.jpg', :price => 100.00, :visibility => true, :description => "Look, just because I don't be givin' no man a foot massage don't make it right for Marsellus to throw Antwone into a glass motherfuckin' house, fuckin' up the way the nigger talks. Motherfucker do that shit to me, he better paralyze my ass, 'cause I'll kill the motherfucker, know what I'm sayin'?")
p6 = Product.create(:title => 'Air Max 6', :product_type => 'Shoe', :sku => 'X0006', :quantity => 30, :image => 'maxies06.jpeg', :price => 100.00, :visibility => true, :description => "Look, just because I don't be givin' no man a foot massage don't make it right for Marsellus to throw Antwone into a glass motherfuckin' house, fuckin' up the way the nigger talks. Motherfucker do that shit to me, he better paralyze my ass, 'cause I'll kill the motherfucker, know what I'm sayin'?")

p7 = Product.create(:title => 'Balaclava', :product_type => 'Stealth', :sku =>'SUS01', :quantity => 100, :image => 'balaclava.jpg', :price => 50, :visibility => true, :description => "Look, just because I don't be givin' no man a foot massage don't make it right for Marsellus to throw Antwone into a glass motherfuckin' house, fuckin' up the way the nigger talks. Motherfucker do that shit to me, he better paralyze my ass, 'cause I'll kill the motherfucker, know what I'm sayin'?")
p8 = Product.create(:title => 'Revolver', :product_type => 'Offense', :sku => 'SUS02', :quantity => 5, :image => 'revolver.jpg', :price => 1500, :visibility => true, :description => "Look, just because I don't be givin' no man a foot massage don't make it right for Marsellus to throw Antwone into a glass motherfuckin' house, fuckin' up the way the nigger talks. Motherfucker do that shit to me, he better paralyze my ass, 'cause I'll kill the motherfucker, know what I'm sayin'?")
p9 = Product.create(:title => 'Moustache', :product_type => 'Stealth', :sku => 'SUS03', :quantity => 2000, :image => 'moustache.jpg', :price => 12.50, :visibility => true, :description => "Look, just because I don't be givin' no man a foot massage don't make it right for Marsellus to throw Antwone into a glass motherfuckin' house, fuckin' up the way the nigger talks. Motherfucker do that shit to me, he better paralyze my ass, 'cause I'll kill the motherfucker, know what I'm sayin'?")
p10 = Product.create(:title => 'Shank', :product_type => 'Offense', :sku => 'SUS04', :quantity => 1, :image => 'godfather.jpg', :price => 7000, :visibility => true, :description => "Look, just because I don't be givin' no man a foot massage don't make it right for Marsellus to throw Antwone into a glass motherfuckin' house, fuckin' up the way the nigger talks. Motherfucker do that shit to me, he better paralyze my ass, 'cause I'll kill the motherfucker, know what I'm sayin'?")
p11 = Product.create(:title => 'Lock Pick Kit', :product_type => 'Stealth', :sku => 'SUS05', :quantity => 200, :image => 'lockpickset.jpg', :price => 10, :visibility => true, :description => "Look, just because I don't be givin' no man a foot massage don't make it right for Marsellus to throw Antwone into a glass motherfuckin' house, fuckin' up the way the nigger talks. Motherfucker do that shit to me, he better paralyze my ass, 'cause I'll kill the motherfucker, know what I'm sayin'?")

# xaun << heaps of nikes
# inspector << heaps of nikes << illigal stuff
a1.stores << s1
a2.stores << s1 << s2
s1.products << p1 << p2 << p3 << p4 << p5 << p6
s2.products << p7 << p8 << p9 << p10 << p11


