setup do
	puts "空の高さを設定"
	@sky_height = 100
end

setup do
	puts "山の高さを設定"
	@mountain_height = 200
end

events "空が落ちてくる" do
	@sky_height < 300
end

events "空が近づいてくる" do
	@sky_height < @mountain_height
end

events "もうダメだ…手遅れ" do
	@sky_height < 0
end