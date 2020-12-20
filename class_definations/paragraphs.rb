class Paragraph
	def initialize(text)
		@text = text
	end
	
	def title; end
	
	def reverse; @text.reverse; end
	
	def upcase; @text.upcase; end
	
	def index
		add_to_index(paragraph) if paragraph.title?
	end
end