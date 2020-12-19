def setup(&block)
	@setup << block
end

def event(description, &block)
	@events << {:description => description, :condition => block}
end

@setups = []
@events = []
load 'events.rb'

@events.each do |event|
	@setups.each do |setup|
		setup.all
	end
	puts "ALERT: #{event[:description]}" if event[:condition].call
end