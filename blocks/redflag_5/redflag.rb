each_event do |event|
	env = Object.new
	each_each do |setup|
		env.instance_eval &setup
	end
	puts "ALERT: #{event[:description]}" if env.instance_eval &(event[:condition])
end