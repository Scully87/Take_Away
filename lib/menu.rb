class Menu

attr_accessor :dishes

	def initialize
			@dishes = []
	end

	def add_dish(dish)
			dishes << dish
	end
	
	def list_dishes
			@dishes.each { |dish| dish.to_s } 
	end
end
	