Store.destroy_all
Admin.destroy_all
Product.destroy_all
Order.destroy_all
Guest.destroy_all


a1 = Admin.create(:first_name => 'Xaun', :last_name => 'Lopez', :email => 'xaun@mail.com', :password => 'Chicken1', :password_confirmation => 'Chicken1')
a2 = Admin.create(:first_name => 'Inspector', :last_name => 'Gadget', :email => 'inspector@mail.com', :password => 'Chicken1', :password_confirmation => 'Chicken1')
a3 = Admin.create(:first_name => 'John', :last_name => 'Smith', :email => 'john@mail.com', :password => 'Chicken1', :password_confirmation => 'Chicken1')

# g1 = Guest.create(:first_name => 'Dave', :last_name => 'footy', :email => 'dave@mail.com', :phone_number => '95461234', :street => '100 Davey ST, Footyville', :postcode => '8008', :country => 'Australia', :state => 'NSW')
# g2 = Guest.create(:first_name => 'Butch', :last_name => 'Killa', :email => 'butcher@mail.com', :phone_number => '95464321', :street => '100 Cut Ave, Gashtown', :postcode => '1456', :country => 'Australia', :state => 'QLD')

s1 = Store.create(:store_name => 'Heaps Of Nikes', :legal_business_name => 'Heaps of Nikes PTY LTD', :homepage_title => 'Heaps Of Nikes', :shopfront_description => 'All of the best Nikes, at the best prices', :seller_email => 'support@nikes.com', :phone_number => '84473774', :street => '100 Nike Parade, Nikeland', :city => 'Sydney', :postcode => '2000', :country => 'Australia', :state => 'NSW', :facebook => 'https://www.facebook.com/xaun.lopez', :twitter => 'https://twitter.com/XaunLopez', :youtube => 'https://www.youtube.com/channel/UCKXZ1cyf8IcFzlkAUcA_3Wg', :instagram => '#', :about => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum. Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh. Quisque volutpat condimentum velit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam nec ante. Sed lacinia, urna non tincidunt mattis, tortor neque adipiscing diam, a cursus ipsum ante quis turpis. Nulla facilisi. Ut fringilla. Suspendisse potenti. Nunc feugiat mi a tellus consequat imperdiet. Vestibulum sapien. Proin quam. Etiam ultrices. Suspendisse in justo eu magna luctus suscipit. Sed lectus. Integer euismod lacus luctus magna. Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui. Praesent blandit dolor. Sed non quam. In vel mi sit amet augue congue elementum. Morbi in ipsum sit amet pede facilisis laoreet. Donec lacus nunc, viverra nec, blandit vel, egestas et, augue. Vestibulum tincidunt malesuada tellus. Ut ultrices ultrices enim. Curabitur sit amet mauris. Morbi in dui quis est pulvinar ullamcorper.')
s2 = Store.create(:store_name => 'Shady Wares', :legal_business_name => 'Shady Wares & Co', :homepage_title => 'ShadyWares', :shopfront_description => 'Everything you need to get the job done.', :seller_email => 'support@shady.com', :phone_number => '11112222', :street => '100 Shady Street, Shiftyville', :city => 'Sydney', :postcode => '2000', :country => 'Australia', :state => 'NSW', :facebook => 'https://www.facebook.com/xaun.lopez', :twitter => 'https://twitter.com/XaunLopez', :youtube => 'https://www.youtube.com/channel/UCKXZ1cyf8IcFzlkAUcA_3Wg', :instagram => '#', :about => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum. Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh. Quisque volutpat condimentum velit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam nec ante. Sed lacinia, urna non tincidunt mattis, tortor neque adipiscing diam, a cursus ipsum ante quis turpis. Nulla facilisi. Ut fringilla. Suspendisse potenti. Nunc feugiat mi a tellus consequat imperdiet. Vestibulum sapien. Proin quam. Etiam ultrices. Suspendisse in justo eu magna luctus suscipit. Sed lectus. Integer euismod lacus luctus magna. Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui. Praesent blandit dolor. Sed non quam. In vel mi sit amet augue congue elementum. Morbi in ipsum sit amet pede facilisis laoreet. Donec lacus nunc, viverra nec, blandit vel, egestas et, augue. Vestibulum tincidunt malesuada tellus. Ut ultrices ultrices enim. Curabitur sit amet mauris. Morbi in dui quis est pulvinar ullamcorper. ')

# o1 = Order.create(:confirmed => false, :payment_status => 'not paid', :completed => false)
# o2 = Order.create(:confirmed => false, :payment_status => 'not paid', :completed => false)

p1 = Product.create(:title => 'Air Max 1', :product_type => 'Shoe', :sku => 'X0001', :quantity => 30, :image => 'maxies01.jpg', :price => 80.00, :visibility => true, :description => "Your bones don't break, mine do. That's clear. Your cells react to bacteria and viruses differently than mine. You don't get sick, I do. That's also clear. But for some reason, you and I react the exact same way to water. We swallow it too fast, we choke. We get some in our lungs, we drown. However unreal it may seem, we are connected, you and I. We're on the same curve, just on opposite ends.")
p2 = Product.create(:title => 'Air Max 2', :product_type => 'Shoe', :sku => 'X0002', :quantity => 30, :image => 'maxies02.jpg', :price => 90.00, :visibility => true, :description => "Your bones don't break, mine do. That's clear. Your cells react to bacteria and viruses differently than mine. You don't get sick, I do. That's also clear. But for some reason, you and I react the exact same way to water. We swallow it too fast, we choke. We get some in our lungs, we drown. However unreal it may seem, we are connected, you and I. We're on the same curve, just on opposite ends.")
p3 = Product.create(:title => 'Air Max 3', :product_type => 'Shoe', :sku => 'X0003', :quantity => 30, :image => 'maxies03.jpg', :price => 100.00, :visibility => true, :description => "Your bones don't break, mine do. That's clear. Your cells react to bacteria and viruses differently than mine. You don't get sick, I do. That's also clear. But for some reason, you and I react the exact same way to water. We swallow it too fast, we choke. We get some in our lungs, we drown. However unreal it may seem, we are connected, you and I. We're on the same curve, just on opposite ends.")
p4 = Product.create(:title => 'Air Max 4', :product_type => 'Shoe', :sku => 'X0004', :quantity => 30, :image => 'maxies04.jpg', :price => 110.00, :visibility => true, :description => "Your bones don't break, mine do. That's clear. Your cells react to bacteria and viruses differently than mine. You don't get sick, I do. That's also clear. But for some reason, you and I react the exact same way to water. We swallow it too fast, we choke. We get some in our lungs, we drown. However unreal it may seem, we are connected, you and I. We're on the same curve, just on opposite ends.")
p5 = Product.create(:title => 'Air Max 5', :product_type => 'Shoe', :sku => 'X0005', :quantity => 30, :image => 'maxies05.jpg', :price => 120.00, :visibility => true, :description => "Your bones don't break, mine do. That's clear. Your cells react to bacteria and viruses differently than mine. You don't get sick, I do. That's also clear. But for some reason, you and I react the exact same way to water. We swallow it too fast, we choke. We get some in our lungs, we drown. However unreal it may seem, we are connected, you and I. We're on the same curve, just on opposite ends.")
p6 = Product.create(:title => 'Air Max 6', :product_type => 'Shoe', :sku => 'X0006', :quantity => 30, :image => 'maxies06.jpeg', :price => 130.00, :visibility => true, :description => "Your bones don't break, mine do. That's clear. Your cells react to bacteria and viruses differently than mine. You don't get sick, I do. That's also clear. But for some reason, you and I react the exact same way to water. We swallow it too fast, we choke. We get some in our lungs, we drown. However unreal it may seem, we are connected, you and I. We're on the same curve, just on opposite ends.")
p7 = Product.create(:title => 'Air Max 7', :product_type => 'Shoe', :sku => 'X0007', :quantity => 30, :image => 'maxies07.jpg', :price => 140.00, :visibility => true, :description => "Your bones don't break, mine do. That's clear. Your cells react to bacteria and viruses differently than mine. You don't get sick, I do. That's also clear. But for some reason, you and I react the exact same way to water. We swallow it too fast, we choke. We get some in our lungs, we drown. However unreal it may seem, we are connected, you and I. We're on the same curve, just on opposite ends.")
p9 = Product.create(:title => 'Air Max 9', :product_type => 'Shoe', :sku => 'X0009', :quantity => 30, :image => 'maxies09.jpg', :price => 150.00, :visibility => true, :description => "Your bones don't break, mine do. That's clear. Your cells react to bacteria and viruses differently than mine. You don't get sick, I do. That's also clear. But for some reason, you and I react the exact same way to water. We swallow it too fast, we choke. We get some in our lungs, we drown. However unreal it may seem, we are connected, you and I. We're on the same curve, just on opposite ends.")
p10 = Product.create(:title => 'Air Max 10', :product_type => 'Shoe', :sku => 'X00010', :quantity => 30, :image => 'maxies10.jpg', :price => 160.00, :visibility => true, :description => "Your bones don't break, mine do. That's clear. Your cells react to bacteria and viruses differently than mine. You don't get sick, I do. That's also clear. But for some reason, you and I react the exact same way to water. We swallow it too fast, we choke. We get some in our lungs, we drown. However unreal it may seem, we are connected, you and I. We're on the same curve, just on opposite ends.")


p12 = Product.create(:title => 'Balaclava', :product_type => 'Stealth', :sku =>'SUS01', :quantity => 100, :image => 'balaclava.jpg', :price => 50, :visibility => true, :description => "Your bones don't break, mine do. That's clear. Your cells react to bacteria and viruses differently than mine. You don't get sick, I do. That's also clear. But for some reason, you and I react the exact same way to water. We swallow it too fast, we choke. We get some in our lungs, we drown. However unreal it may seem, we are connected, you and I. We're on the same curve, just on opposite ends.")
p13 = Product.create(:title => 'Revolver', :product_type => 'Offense', :sku => 'SUS02', :quantity => 5, :image => 'revolver.jpg', :price => 1500, :visibility => true, :description => "Your bones don't break, mine do. That's clear. Your cells react to bacteria and viruses differently than mine. You don't get sick, I do. That's also clear. But for some reason, you and I react the exact same way to water. We swallow it too fast, we choke. We get some in our lungs, we drown. However unreal it may seem, we are connected, you and I. We're on the same curve, just on opposite ends.")
p14 = Product.create(:title => 'Moustache', :product_type => 'Stealth', :sku => 'SUS03', :quantity => 2000, :image => 'moustache.jpg', :price => 12.50, :visibility => true, :description => "Your bones don't break, mine do. That's clear. Your cells react to bacteria and viruses differently than mine. You don't get sick, I do. That's also clear. But for some reason, you and I react the exact same way to water. We swallow it too fast, we choke. We get some in our lungs, we drown. However unreal it may seem, we are connected, you and I. We're on the same curve, just on opposite ends.")
p15 = Product.create(:title => 'Shank', :product_type => 'Offense', :sku => 'SUS04', :quantity => 1, :image => 'godfather.jpg', :price => 7000, :visibility => true, :description => "Your bones don't break, mine do. That's clear. Your cells react to bacteria and viruses differently than mine. You don't get sick, I do. That's also clear. But for some reason, you and I react the exact same way to water. We swallow it too fast, we choke. We get some in our lungs, we drown. However unreal it may seem, we are connected, you and I. We're on the same curve, just on opposite ends.")
p16 = Product.create(:title => 'Lock Pick Kit', :product_type => 'Stealth', :sku => 'SUS05', :quantity => 200, :image => 'lockpickset.jpg', :price => 10, :visibility => false, :description => "Your bones don't break, mine do. That's clear. Your cells react to bacteria and viruses differently than mine. You don't get sick, I do. That's also clear. But for some reason, you and I react the exact same way to water. We swallow it too fast, we choke. We get some in our lungs, we drown. However unreal it may seem, we are connected, you and I. We're on the same curve, just on opposite ends.")

# Associations
a1.stores << s1
a2.stores << s1 << s2
s1.products << p1 << p2 << p3 << p4 << p5 << p6 << p7 << p9 << p10
s2.products << p12 << p13 << p14 << p15 << p16


