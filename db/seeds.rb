Store.destroy_all
Admin.destroy_all
Product.destroy_all


a1 = Admin.create(:first_name => 'Xaun', :last_name => 'Lopez', :email => 'xaun@mail.com', :password => 'Chicken1', :password_confirmation => 'Chicken1')

s1 = Store.create(:store_name => 'Heaps Of Nikes')

p1 = Product.create(:title => 'maxie01', :product_type => 'Shoe', :sku => 'X0001', :quantity => 30, :image => 'maxies01.jpg', :price => '100.00', :visibility => true)
p2 = Product.create(:title => 'maxie02', :product_type => 'Shoe', :sku => 'X0002', :quantity => 30, :image => 'maxies02.jpg', :price => '100.00', :visibility => true)
p3 = Product.create(:title => 'maxie03', :product_type => 'Shoe', :sku => 'X0003', :quantity => 30, :image => 'maxies03.jpg', :price => '100.00', :visibility => true)
p4 = Product.create(:title => 'maxie04', :product_type => 'Shoe', :sku => 'X0004', :quantity => 30, :image => 'maxies04.jpg', :price => '100.00', :visibility => true)
p5 = Product.create(:title => 'maxie05', :product_type => 'Shoe', :sku => 'X0005', :quantity => 30, :image => 'maxies05.jpg', :price => '100.00', :visibility => true)
p6 = Product.create(:title => 'maxie06', :product_type => 'Shoe', :sku => 'X0006', :quantity => 30, :image => 'maxies06.jpeg', :price => '100.00', :visibility => true)

a1.stores << s1
s1.products << p1 << p2 << p3 << p4 << p5 << p6
