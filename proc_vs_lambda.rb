def double(callable_object)
	callable_object.call * 2
end

l = lambda { return 10 }
double(l)

def another_double
	p = Proc.new { return 10 }
	result = p.call
	return result * 2
end

another_double