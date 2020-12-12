class Array
	def substitute(array, original, replacement)
		array.map {|e| e == original ? replacement : e }
	end
end

require 'test/unit'

def test_replace
	original = %w[one two three]
	replaced = original.substitute('one', 'zero')
	assert_equal %w[zero two zero three], replaced
end