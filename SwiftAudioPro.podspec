Pod::Spec.new do |s|
  s.name         = 'SwiftAudioPro'
  s.version      = '0.1.3'
  s.summary      = 'A powerful audio library for iOS.'
  s.description  = <<-DESC
                   SwiftAudioPro is a powerful audio library for iOS, providing advanced audio playback and recording capabilities.
                   DESC
  s.homepage     = 'https://github.com/evergrace-co/swift-audio-pro'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'Brad Flood' => 'bradley.flood@gmail.com' }
  s.source       = { :git => 'https://github.com/evergrace-co/swift-audio-pro.git', :tag => s.version.to_s }

  s.platform     = :ios, '13.0'
  s.swift_version = '5.0'
  s.source_files = 'Sources/SwiftAudioPro/**/*'
end
