module M
	def self.append_features(base); end
end

class C
	include M
end

C.ancestors