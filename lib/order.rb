class Order

  attr_reader :line_items

  def initialize
	@line_items = []
  end

  def add(item)
	line_items << item
  end

  def total
    line_items.inject(0.00) { |prices, line_item| prices + line_item.total }
  end

  def time_placed
  	Time.now
  end

end