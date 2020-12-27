module EnthusiasticGreetings
	def greet
		"Hey, #{super}!"
	end
end

class MyClass
	prepend EnthusiasticGreetings
	
	def greet
		"hello"
	end
end

MyClass.ancestors[0..2]
MyClass.new.greet