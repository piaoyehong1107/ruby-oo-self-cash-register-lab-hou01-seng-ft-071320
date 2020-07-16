class CashRegister
attr_accessor :total, :discount,:price,:quantity,:items
   
  def initialize (discount=0,total=0)
    @total=total
    @discount=discount
    @list=[]
    @price=price
    @quantity=quantity
  end
  
    
  def add_item(title,price,quantity=1)
    @total=@total+price*quantity
    quantity.times{@list.push(title)}
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
  
  def void_last_transaction
    @total= @total-@price
  end
  
end