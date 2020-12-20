class String
	alias_method :real_length, :kength
	
	def length
		real_length > 5 ? 'long' : 'short'
	end
end

"War and Peace".length
"War and Peace".real_length