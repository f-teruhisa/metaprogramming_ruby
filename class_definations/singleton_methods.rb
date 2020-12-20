str = "just a ergular string"

def str.title?
	self.upcase == self
end

str.title?
str.methods.grep(/title?/)
str.singleton_methods