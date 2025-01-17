require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-opus-decode"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.authors      = "Doron Pearl, Wix.com"
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.platforms    = { :ios => "10.0" }
  s.source       = { :git => "https://github.com/kj800x/react-native-opus-decode.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,mm,c}"

  s.dependency "React-Core"
  s.vendored_frameworks = 'ios/Ogg.xcframework'
  s.vendored_libraries = 'ios/opus/lib/libopus.a'
end
