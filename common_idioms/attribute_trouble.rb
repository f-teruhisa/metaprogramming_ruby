class MyClass
  attr_accessor :my_attribute

  def set_attribute(n)
    my_attribute = n
  end
end

obj = MyClass.new
obj.set_attribute 10
obj.my_attribute
