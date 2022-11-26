Pod::Spec.new do |s|  
    s.name = 'OnRewindSDK'
    s.version = '1.1.6'
    s.summary = 'OnRewind summary'
    s.homepage = 'https://github.com/netcosports'

    s.author = { 'Sergei Mikhan' => 'sergei@netcosports.com' }
    s.license = {
        :type => "Copyright",
        :text => "Copyright 2020 Origins Digital"
    }

    s.platform = :ios
    s.source = { :http => 'https://origins-mobile-products.s3.eu-west-1.amazonaws.com/hbs_onrewind_player/kan/1.1.6/OnRewindSDK.xcframework.zip' }

    s.ios.deployment_target = '12.0'
    s.ios.vendored_frameworks = 'OnRewindSDK.xcframework'

	s.dependency 'google-cast-sdk-no-bluetooth', '4.7.0'
	s.dependency 'SportBuff', '3.0.12'
	s.dependency 'onrewindshared'


s.preserve_paths = "OnRewindSDK.xcframework"
s.resources = ["OnRewindSDK.xcframework/ios-arm64/OnRewindSDK.framework/OnRewindSDKBundle.bundle"]


end
