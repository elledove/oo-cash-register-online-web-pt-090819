class CashRegister

  attr_accessor :total, :discount, :last_transaction_amount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction_amount= 0 
  end


  def add_item(title,price,quantity = 1)
    if quantity>1
      i=0
      while i<quantity
        @items << title
        i+=1
      end
    else
      @items << title
    end
    @total += price*quantity
    @last_transaction_amount = @total
    @total
  end

  def apply_discount()
    if @discount > 0
      @discount = @discount/100.to_f
      @total = @total - (@total * (@discount))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end


  def void_last_transaction
    @total -= @last_transaction_amount
  end

end
















class CashRegister

  def initialize(discount=0)
    self.total = 0
    self.discount = discount
    self.items = []
    self.last_transaction_amount = 0
  end

  def total=(value)
    @total = value
  end

  def discount=(value)
    @discount = value
  end

  def discount
    @discount
  end

  def total
    @total
  end

  def add_item(title, amount, quantity=1)
    self.total += amount * quantity
    quantity.times do
      items << title
    end

    self.last_transaction_amount = amount * quantity
  end

  def apply_discount
    if discount != 0
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
    else
      puts "There is no discount to apply."
    end
  end

  def items=(list)
    @items = list
  end

  def items
    @items
  end

  def last_transaction_amount=(amount)
    @last_transaction_amount = amount
  end

  def last_transaction_amount
    @last_transaction_amount
  end

  def void_last_transaction
    self.total -= last_transaction_amount
  end
