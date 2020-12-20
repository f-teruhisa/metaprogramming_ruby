def add_mothod_to(a_class)
	a_class.class_eval do
		def m; 'Hello'; end
	end
end

add_mothod_to String
"abc".m