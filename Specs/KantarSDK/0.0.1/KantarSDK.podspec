Pod::Spec.new do |s|  
    s.name = 'KantarSDK'
    s.version = '0.0.1'
    s.summary = 'Kantar SDK summary'
    s.homepage = 'https://www.kantar.com/'

    s.platform = :ios
    s.source = { :http => '' }

    s.ios.deployment_target = '12.0'
    s.ios.vendored_frameworks = 'KantarSDK.xcframework'

	s.dependency ''

s.preserve_paths = ".xcframework"

end