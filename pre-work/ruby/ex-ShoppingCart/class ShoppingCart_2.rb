require 'date'

class ShoppingCart
  def initialize
    @items = []
  end

  def add_item(item)
    @items << item
  end

  def checkout

  end
end

class Item
  def initialize(name, price)
    @name = name
    @price = price
  end

  def price
    @price
  end
end

class Houseware < Item
  def price
    if @price > 100
      @price *= 0.05
    else
      @price
    end
  end
end

class Fruit < Item
  def price
    if Date.today.saturday? || Date.today.sunday?
      @price *= 0.9
    else
      @price
    end
  end
end

banana = Fruit.new("Banana", 10)
orangeJuice = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
vacuumCleaner = Houseware.new("Vacuum Cleaner", 150)
anchovies = Item.new("Anchovies",2)

josh_cart = ShoppingCart.new
josh_cart.add_item(orangeJuice)
josh_cart.add_item(rice)
josh_cart.checkout
