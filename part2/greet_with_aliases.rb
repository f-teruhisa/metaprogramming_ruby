module Greetings
	def greet
		"hello"
	end
end

class MyClass
	include Greetings
end

MyClass.new.greet