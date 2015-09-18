#
# Be sure to run `pod lib lint ConvenienceKit.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "ConvenienceKit"
  s.version          = "0.4.0"
  s.summary          = "Wrappers for UIKit and convenience features for Swift. Built for Make School tutorials."
  s.description      = <<-DESC
                       A library providing multiple UIKit wrappers and other helper functions for Make School's tutorials.
                       DESC
  s.homepage         = "https://github.com/MakeSchool/ConvenienceKit"
  s.license          = 'MIT'
  s.author           = { "Make School" => "code@makeschool.com" }
  s.source           = { :git => "https://github.com/MakeSchool/ConvenienceKit.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'ConvenienceKit' => ['Pod/Assets/*.png']
  }
end
