#
# Be sure to run `pod lib lint SuspendedViewStub.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SuspendedViewStub'
  s.version          = '0.1.0'
  s.summary          = 'A simple view stub for application suspend mode'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
A simple view stub for application suspend mode.
                       DESC

  s.homepage         = 'https://github.com/torlopov-andrey/SuspendedViewStub'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Torlopov Andrey' => 'torlopov.andrey@gmail.com' }
  s.source           = { :git => 'https://github.com/torlopov-andrey/SuspendedViewStub.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'SuspendedViewStub/Classes/**/*'
  
  # s.resource_bundles = {
  #   'SuspendedViewStub' => ['SuspendedViewStub/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
