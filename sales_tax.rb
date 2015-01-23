class Item
	attr_accessor :name, :price 

	def initialize(name, price)
		@name = name 
		@price = price
	end 

end 

class 
	
	def tax
		(price * 0.1).round(2)
	end 

class TaxExempt
	attr_accessor :name, :price

	def initialize (name, price)
		@name = name 
		@price = price
	end
end

item1 = ShoppingBasket.new("book", 12.49)
item2 = ShoppingBasket.new("music CD", 14.99)
item3 = ShoppingBasket.new("chocolate bar", 0.85)

basket_1 = Array.new
basket_1 << "1 #{item1.name}: #{item1.price}"
basket_1 << "1 #{item2.name}: #{item2.price}"
basket_1 << "1 #{item3.name}: #{item3.price}"

total_tax = item2.tax + item3.tax
grand_total = total_tax + item1.price + item2.price + item3.price

puts basket_1 
puts "Sales Taxes: #{total_tax}"
puts "Total: #{grand_total}"




