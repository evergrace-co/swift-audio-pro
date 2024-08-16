#
# Be sure to run `pod lib lint SwiftAudioPro.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SwiftAudioPro'
  s.version          = '0.0.1'
  s.summary          = 'Easy audio streaming for iOS'
  s.description      = <<-DESC
SwiftAudioPro is an audio player written in Swift, making it simpler to work with audio playback from streams and files.
DESC

  s.homepage         = 'https://github.com/evergrace-co/swift-audio-pro'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.authors          = { 'Brad Flood' => 'hey@bradflood.com', 'David Chavez' => 'david@dcvz.io', 'Jørgen Henrichsen' => 'jh.henrichs@gmail.com', }
  s.source           = { :git => 'https://github.com/evergrace-co/swift-audio-pro.git', :tag => s.version.to_s }

  s.ios.deployment_target = '15.0'
  s.swift_version = '5.0'
  s.source_files = 'Sources/SwiftAudioPro/**/*'
end
