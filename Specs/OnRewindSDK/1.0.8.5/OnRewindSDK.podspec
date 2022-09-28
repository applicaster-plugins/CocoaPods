Pod::Spec.new do |s|  
  s.name = 'OnRewindSDK'
  s.version = '1.0.8.5'
  s.summary = 'OnRewind summary'
  s.homepage = 'https://github.com/netcosports'

  s.author = { 'Sergei Mikhan' => 'sergei@netcosports.com' }
  s.license = {
      :type => "Copyright",
      :text => "Copyright 2020 Origins Digital"
  }

  s.platform = :ios
  s.source = { :http => 'https://origins-mobile-products.s3.eu-west-1.amazonaws.com/onrewind_player/kan/1.0.8/OnRewindSDK.xcframework.zip' }

  s.ios.deployment_target = '12.0'
  s.ios.vendored_frameworks = 'OnRewindSDK.xcframework'
  s.static_framework = true
  s.dependency 'google-cast-sdk-no-bluetooth', '4.7.0'
  s.dependency 'SportBuff', '0.2.0.0'
  s.dependency 'onrewindshared'
  s.dependency 'Protobuf'

  s.xcconfig =  {
    'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
    'ENABLE_BITCODE' => 'YES',
    'SWIFT_VERSION' => '5.1'
  }
  
  def s.post_install(target)
      target.build_configurations.each do |config|
          config.build_settings['ARCHS'] = ["arm64", "x86_64"]
      end        
  end    
end
