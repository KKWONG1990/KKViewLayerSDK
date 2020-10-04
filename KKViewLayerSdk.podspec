#
# Be sure to run `pod lib lint KKViewLayerSdk.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'KKViewLayerSdk'
  s.version          = '0.1.0'
  s.summary          = 'iOS视图开发工具'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
iOS objc视图开发工具集合
                       DESC

  s.homepage         = 'https://github.com/KKWONG1990/KKViewLayerSdk'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'KKWONG1990' => 'kkwong90@163.com' }
  s.source           = { :git => 'https://github.com/KKWONG1990/KKViewLayerSdk.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'KKViewLayerSdk/Classes/**/*'
  
  # s.resource_bundles = {
  #   'KKViewLayerSdk' => ['KKViewLayerSdk/Assets/*.png']
  # }

  s.public_header_files = 'KKViewLayerSdk/Classes/**/*.h'
  s.frameworks = 'UIKit'
  s.dependency 'MBProgressHUD'
end
