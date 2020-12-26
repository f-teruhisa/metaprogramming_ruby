class String
	def self.inherited(subclass)
		puts "#{self}は#{subclass}に継承された"
	end
end

class MyClass < String; end
