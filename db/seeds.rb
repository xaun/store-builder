Store.destroy_all
Admin.destroy_all
Product.destroy_all
Order.destroy_all
Guest.destroy_all


a1 = Admin.create(:first_name => 'Xaun', :last_name => 'Lopez', :email => 'xaun@mail.com', :password => 'Chicken1', :password_confirmation => 'Chicken1')
a2 = Admin.create(:first_name => 'Inspector', :last_name => 'Gadget', :email => 'inspector@mail.com', :password => 'Chicken1', :password_confirmation => 'Chicken1')

g1 = Guest.create(:first_name => 'Dave', :last_name => 'footy', :email => 'dave@mail.com', :phone_number => '95461234', :street => '100 Davey ST, Footyville', :postcode => '8008', :country => 'Australia', :state => 'NSW')
g2 = Guest.create(:first_name => 'Butch', :last_name => 'Killa', :email => 'butcher@mail.com', :phone_number => '95464321', :street => '100 Cut Ave, Gashtown', :postcode => '1456', :country => 'Australia', :state => 'QLD')

s1 = Store.create(:store_name => 'Heaps Of Nikes', :legal_business_name => 'Heaps of Nikes PTY LTD', :facebook => 'https://www.facebook.com/xaun.lopez', :twitter => 'https://twitter.com/XaunLopez', :youtube => 'https://www.youtube.com/channel/UCKXZ1cyf8IcFzlkAUcA_3Wg', :instagram => '#')
s2 = Store.create(:store_name => 'True Inspector', :legal_business_name => 'True Inspector PTY LTD', :facebook => 'https://www.facebook.com/xaun.lopez', :twitter => 'https://twitter.com/XaunLopez', :youtube => 'https://www.youtube.com/channel/UCKXZ1cyf8IcFzlkAUcA_3Wg', :instagram => '#')

o1 = Order.create(:confirmed => false, :payment_status => 'not paid', :completed => false)
o2 = Order.create(:confirmed => false, :payment_status => 'not paid', :completed => false)

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

# xaun << heaps of nikes
# inspector << heaps of nikes << illigal stuff
a1.stores << s1
a2.stores << s1 << s2
o1.guest = g1
o1.save
o1.products << p1 << p3 << p4
o2.guest = g2
o2.save
o2.products << p15 << p13
s1.orders << o1
s2.orders << o2
s1.products << p1 << p2 << p3 << p4 << p5 << p6 << p7 << p9 << p10
s2.products << p12 << p13 << p14 << p15 << p16


