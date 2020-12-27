module Greetings
	def greet
		"hello"
	end
end

module EnthusiaticGreetings
	include Greetings
	
	def greet
		"Hey, #{super}!"
	end
end

class MyClass
	include EnthusiaticGreetings
end

MyClass.new.greet
