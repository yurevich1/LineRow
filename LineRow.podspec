#
# Be sure to run `pod lib lint LineRow.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LineRow'
  s.version          = '1.0'
  s.summary          = 'LineRow just creates a simple colored row for Eureka project.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
LineRow just creates a simple colored row for Eureka project. Just setup a color. That's it!
                       DESC

  s.homepage         = 'https://github.com/yurevich1/LineRow'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Vyacheslav Petrukhin' => 'ps.voidmoon@gmailcom' }
  s.source           = { :git => 'https://github.com/yurevich1/LineRow.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'LineRow/Classes/**/*'
  
  # s.resource_bundles = {
  #   'LineRow' => ['LineRow/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
   s.dependency 'Eureka', '~> 3.0'
end
