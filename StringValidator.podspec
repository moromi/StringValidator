Pod::Spec.new do |s|
  s.name = "StringValidator"
  s.version = "0.4.0"
  s.summary = "String validator"
  s.homepage = "https://github.com/moromi/StringValidator"
  s.license = "MIT"
  s.author = { "Takahiro Ooishi" => "taka0125@gmail.com" }
  s.source = { :git => "https://github.com/moromi/StringValidator.git", :tag => s.version.to_s }

  s.ios.deployment_target = "8.0"

  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }

  s.source_files = "Sources/**/*.swift"
end
