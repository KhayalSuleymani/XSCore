Pod::Spec.new do |spec|

  spec.name         = "XSCore"
  spec.version      = "0.0.1"
  spec.summary      = "A CocoaPods library written in Swift"

  spec.description  = <<-DESC
This CocoaPods library helps you perform calculation.
                   DESC

  spec.homepage     = "https://github.com/KhayalSuleymani/XSCore"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "KhayalSuleymani" => "khayal.suleymani@icloud.com" }

  spec.ios.deployment_target = "15.0"
  spec.swift_version = "5.0"

  spec.source        = { :git => "https://github.com/KhayalSuleymani/XSCore.git", :tag => "#{spec.version}" }
  spec.source_files  = "XSCore/**/*.{h,m,swift}"

end
