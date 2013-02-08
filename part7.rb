class CartesianProduct
  include Enumerable
  #@a1,@a2 = [],[]

  def initialize(a1, a2)
    @a1,@a2 = a1, a2    
  end  
  def to_a
  	@a1.product(@a2)
  end
  def each
    return self.to_a.each     
  end
end