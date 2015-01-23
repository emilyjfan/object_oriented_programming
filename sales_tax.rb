class NoTax
	attr_accessor :name, :price 

	def initialize(name, price)
		@name = name 
		@price = price
	end 

	def tax
		0
	end
end 

class SalesTax 
	attr_accessor :name, :price 

	def initialize(name, price)
		@name = name 
		@price = price
	end 
	
	def tax
		(price * 0.1).round(2)
	end
end 

class ImportTax 
	attr_accessor :name, :price 

	def initialize(name, price)
		@name = name 
		@price = price
	end 

	def tax
		(price * 0.05).round(2)
	end 
end

class SaleAndImportTax 
	attr_accessor :name, :price 

	def initialize(name, price)
		@name = name 
		@price = price
	end 
	
	def tax
		(price * 0.15).round(2)
	end
end

item1 = NoTax.new("book", 12.49)
item2 = SalesTax.new("music CD", 14.99)
item3 = SalesTax.new("chocolate bar", 0.85)
#too much repetition up here 

basket_1 = Array.new
basket_1 << "1 #{item1.name}: #{item1.price}"
basket_1 << "1 #{item2.name}: #{item2.price}"
basket_1 << "1 #{item3.name}: #{item3.price}"
#again..to much repetition

total_tax = (item2.tax + item3.tax).round(2)
grand_total = (total_tax + item1.price + item2.price + item3.price).round(2)

puts basket_1 
puts "Sales Taxes: #{total_tax}"
puts "Total: #{grand_total}"

#need a better way to assign items to Classes & make basket.
#should add in Class inheritance


