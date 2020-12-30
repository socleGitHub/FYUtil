#
# Be sure to run `pod lib lint FYUtil.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'FYUtil'
  s.version          = '0.1.1'
  s.summary          = 'FYUtil for iOS project can help us write code easily! '

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                        A tool for iOS project by OC Language...
                        FYUtil for iOS project can help us write code easily!
                       DESC

  s.homepage         = 'https://github.com/socleGitHub/FYUtil'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '154485601@qq.com' => 'zjx944837781@126.com' }
  s.source           = { :git => 'https://github.com/socleGitHub/FYUtil.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'FYUtil/Classes/**/*'
  
  # s.resource_bundles = {
  #   'FYUtil' => ['FYUtil/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
