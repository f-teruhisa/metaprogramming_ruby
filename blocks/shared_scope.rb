def define_methods
	shared = 0
	
	Kernel.send :define_method, :counter do
		shared
	end
	
	Kernel.send :define_method, :inc do
		shared += x
	end
end

define_methods

counter
inc(4)
counter