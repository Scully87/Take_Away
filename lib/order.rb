class Order

	attr_reader :line_items

		def initialize
			@line_items = []
		end

		def add(item)
			line_items << item
		end

end