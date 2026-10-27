Pod::Spec.new do |s|
  s.name             = 'APIVerveRandomIdentityGenerator'
  s.version          = '1.2.3'
  s.summary          = 'Random Identity Generator creates synthetic user profiles with realistic names, usernames, email addresses, phone numbers, and gender...'
  s.description      = <<-'DESC'
Random Identity Generator creates synthetic user profiles with realistic names, usernames, email addresses, phone numbers, and gender attributes. Paid plans add batch generation, birthdates, company details, and AI-generated avatars.

This iOS/macOS SDK provides a convenient way to access the Random Identity Generator from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/randomidentitygenerator?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/randomidentitygenerator-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveRandomIdentityGenerator/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
