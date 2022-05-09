#
# Be sure to run `pod lib lint Hi-Kit-Module.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Hi-Kit-Module'
  s.version          = '0.1.0'
  s.summary          = 'A short description of Hi-Kit-Module.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/stoneUoU/Hi-Kit-Module'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'linlei' => 'stoneuou@163.com' }
  s.source           = { :git => 'https://github.com/stoneUoU/Hi-Kit-Module.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'Hi-Kit-Module/**/*.{h,m,swift}'
  
  s.resource_bundles = {
    'Hi-Kit-Module' => ['Hi-Kit-Module/Resource/HiKitModule.xcassets']
  }
  
#  s.resources = ['Hi-Kit-Module/**/*.xib', 'Hi-Kit-Module/**/*.bundle','Hi-Kit-Module/**/*.xcassets']
  
  s.dependency 'Hi-Router-Module', '0.2.0'
#  s.dependency 'Hi-Helper-Module'
  
  s.dependency 'SnapKit'
  s.dependency 'MJRefresh'
  s.dependency 'Kingfisher'
  
  # s.resource_bundles = {
  #   'Hi-Kit-Module' => ['Hi-Kit-Module/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
