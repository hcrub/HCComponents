Pod::Spec.new do |s|
  version = "0.0.1"
  s.name         = "HCComponents"
  s.version      = version
  s.summary      = "Collection of useful components."
  s.homepage     = "https://github.com/hcrub/HCComponents"
  s.author       = { "Neil Burchfield" => "neil.burchfield@gmail.com" }
  s.source       = { :git => "git", :tag => version }
  s.platform     = :ios, '8.0'
  s.source_files = 'HCComponents/HCComponents.h', 'HCComponents/*/*.{h,m}'
  s.requires_arc = true
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
end