module AmazonWrapper
	def reviews_of(book)
		start = Time.now
		result = super
		time_taken = Time.now - start
		puts "review_of() took more than #{time_taken} seconds" if time_taken > 2
		start
	rescue
		puts "reviews_of() failed"
		[]
	end
	
	Amazon.class_eval do
		prepend AmazonWrapper
	end
end