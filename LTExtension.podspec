#
#  Be sure to run `pod spec lint LTExtension.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "LTExtension"
  s.version      = "0.1.7"
  s.summary      = "Swift Common Extension"


  s.description  = <<-DESC
  Swift Common Extension
                   DESC

  s.homepage     = "https://github.com/TopSkySir/LTExtension.git"

  s.license      = "MIT (example)"
  s.license      = { :type => "MIT", :file => "LICENSE" }


  s.author             = { "TopSkySir" => "TopSkyComeOn@163.com" }
  s.platform     = :ios, '8.0'

  s.source       = { :git => "https://github.com/TopSkySir/LTExtension.git", :tag => "#{s.version}" }
  s.swift_version = "4.0"

  s.subspec 'Foundation' do |foundation|
    foundation.ios.deployment_target = '8.0'
    foundation.source_files = 'Sources/Foundation/*.swift'
  end

  s.subspec 'UIKit' do |uIKit|
    uIKit.ios.deployment_target = '8.0'
    uIKit.source_files = 'Sources/UIKit/*.swift'
  end

end
