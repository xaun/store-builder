Store.destroy_all
Admin.destroy_all
Product.destroy_all


a1 = Admin.create(:first_name => 'Xaun', :last_name => 'Lopez', :email => 'xaun@mail.com', :password => 'Chicken1', :password_confirmation => 'Chicken1')

s1 = Store.create(:store_name => 'Heaps Of Nikes')

p1 = Product.create(:title => 'maxie01', :image => '/assets/maxies01', :price => '100.00', :visibility => true)
p2 = Product.create(:title => 'maxie02', :image => 'maxies02', :price => '100.00', :visibility => true)
p3 = Product.create(:title => 'maxie03', :image => 'maxies03', :price => '100.00', :visibility => true)
p4 = Product.create(:title => 'maxie04', :image => 'maxies04', :price => '100.00', :visibility => true)
p5 = Product.create(:title => 'maxie05', :image => 'maxies05', :price => '100.00', :visibility => true)
p6 = Product.create(:title => 'maxie06', :image => 'maxies06', :price => '100.00', :visibility => true)

a1.stores << s1
s1.products << p1 << p2 << p3 << p4 << p5 << p6
