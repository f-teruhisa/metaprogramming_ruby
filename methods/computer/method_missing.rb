class Computer
	def initialize(computer_id, data_source)
		@id = computer_id
		@data_source = data_source
	end
	
	def method_missing(name)
		super if !@data_source.respond_to?("get_#{name}_info")
		info = @data_source.send("get_#{name}_info", @id)
		price = @data_source.send("get_#{name}_price", @id)
		result = "#{name.capitalize}: #{info} ($#{price})"
		return "* #{result}" if price >= 100
		result
	end
	
	def respond_to_missing?(method, include_private = false)
		# ゴーストメソッド(method_missing)があればtrueを、そうでなければsupterを呼び常にfalseを返す
		@data_source.respond_to?("get_#{method}_info") || super
	end
end