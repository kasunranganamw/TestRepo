#
# Be sure to run `pod lib lint LankaQRValidation.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LankaQRValidation'
  s.version          = '1.0.1'
  s.summary          = 'LankaQRValidation for iOS.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'LankaQRValidation pod can be used to validate QR codes issued in LankaQR standard.'
  s.homepage         = 'https://github.com/kasunranganamw/LankaQRValidation'
  # s.screenshots     = 'https://drive.google.com/file/d/1WquQLKJEMWtkkNv9t6rCefCi-lAmuao_/view?usp=sharing', 'https://drive.google.com/file/d/1sR5l_eZ9Mj3OVuWD2kzvFyvEZh7pBYDp/view?usp=sharing'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'kasunranganamw@gmail.com' => 'kasunranganamw@gmail.com' }
  s.source           = { :git => 'https://github.com/kasunranganamw/LankaQRValidation.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/kasunranganamw'

  s.ios.deployment_target = '8.0'

  s.source_files = 'LankaQRValidation/Classes/**/*'
  
  # s.resource_bundles = {
  #   'LankaQRValidation' => ['LankaQRValidation/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
