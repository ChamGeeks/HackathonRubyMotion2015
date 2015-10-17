$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'Beers'
  app.frameworks += ['CoreLocation', 'MapKit', 'AddressBook']
  app.info_plist['NSAppTransportSecurity'] = { 'NSAllowsArbitraryLoads' => true }

  app.deployment_target = '9.0'
end
