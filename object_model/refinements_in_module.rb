module StringExtensions
	refine String do
		def reverse
			"esrever"
		end
	end
end

module StringStuff
	using StringExtensions
	"mystring".reverse
end

"my_string".reverse