def event(description)
	@events << {:description=> description, :condition => block}
end

@events = []
load 'events.rb'