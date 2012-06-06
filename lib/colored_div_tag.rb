#The plugin class.
module ColoredDivTag
	#Method that will be called on, 'void' parameter couldn't figure out a way to have no parameters.
  def color_tag (void)
		#Gets the plugin settings for this plugin, from the settings page.
		!!(PluginSetting.settings_for_plugin(:colored_div_tag))
		settings = PluginSetting.settings_for_plugin(:colored_div_tag);

		if (settings == nil)
			return
		end

		#The indexes are from the _colored_div_tag_settings.html.erb, the names of the text_field's.
		color = settings['colorToRender']
		string = settings['stringToShow']

		#returns a tag that will display the string from the settings page.
		return "<div style=\"color:#{color};border-style:solid;border-width:1px;\">#{string} </div>"
  end

end
