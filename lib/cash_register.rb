class CashRegister
attr_accessor :total,:discount,:price,:quantity,:items, :title
   
  def initialize (discount=0,total=0)
    @total=total
    @discount=discount
    @list=[]
    @prices=[]
    @quantity=quantity
    @title=title
  end
  
    
  def add_item(title,price,quantity=1)
    @total=@total+price*quantity
    quantity.times{@list.push(title)}
    quantity.times{@prices.push(price)}
  end
  

  def apply_discount
   if discount !=0
    @total=@total*(100-discount)/100
    return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
end

  def items
    @list
  end
  def price
      @prices
  end
 
  def void_last_transaction
    if @total.length!=0
    @total= @total-@prices.pop
    else
    return 0.0
  end
  
end
  