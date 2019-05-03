Pod::Spec.new do |s|
    s.name             = "TaleWs"
    s.version          = "5.0.4"
    s.summary          = "Elegant JSON WebService for Swift ☁️"
    s.homepage         = "https://github.com/taledog/ws"
    s.license          = { :type => "MIT", :file => "LICENSE" }
    s.author           = "arden"
    s.source           = { :git => "https://github.com/taledog/ws.git", :tag => s.version.to_s }
    s.social_media_url = 'https://weibo.com/arden'
    s.ios.deployment_target = "9.0"
    s.source_files = "ws/*.{h,m,swift}"
    s.frameworks = "Foundation"
    s.dependency 'Arrow', '~> 5.0.0'
    s.dependency 'thenPromise', '~> 5.0.0'
    s.dependency 'Alamofire', '~> 4.8.2'
    s.description  = "Elegant JSON WebService for Swift - Stop writing boilerplate JSON webservice code and focus on your awesome App instead"
    s.module_name = 'ws'
end
