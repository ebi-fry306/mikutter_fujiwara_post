#-*- coding: utf-8 -*-
Plugin.create(:mikutter_fujiwara_post) do
	command(
		:fujiwara_post,
		name: '藤原竜也変換',
		condition: lambda{ |opt| true },
		visible: true,
		role: :postbox) do |opt|
		str = Plugin.create(:gtk).widgetof(opt.widget).widget_post.buffer.text
		strAry = str.split(//)
		strfuji = ""
		for var in strAry do
			var += "゛"
			strfuji += var
		end
		Plugin.create(:gtk).widgetof(opt.widget).widget_post.buffer.text = strfuji
	end
end