#Registers the plugin, to be displayed in the plugin list.
#First parameter is the name of the plugin's class ColoredDivTag.
#Second parameter is the tag you are giving it, could be anything, seen in the plugins list.
#Third parameter are the attributes you will see in the plugin list.
#The ':settings_partial' has to point to the setting's template (_colored_div_tag_settings.html.erb   becomes just colored_div_tag_settings)
#There's also a validator option (to validate strings given in the settings) which is ':validator', check the 'different ways.txt' under '2nd Way' there will be an 'ExamplePluginValidator'
plugin = Canvas::Plugin.register('colored_div_tag', 'tag_modification', {
  :name => lambda{ t :name, "Colored Div Tag" },
  :description => lambda{ t :description, "Displays a colored string on top of the assignments list when managing assignments." },
  :website => 'http://companySite.com',
  :author => 'Your name here',
  :author_website => 'http://yourSite.com',
  :version => '1.3.3.7',
  :settings_partial => 'plugin/colored_div_tag_settings',
})
