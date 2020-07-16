require 'pry'
class CashRegister
attr_accessor :total, :discount,:price,:quantity,:prices,:items
   
  def initialize (discount=0,total=0)
    @total=total
    @discount=discount
    @list=[]
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
    
  end
  
end