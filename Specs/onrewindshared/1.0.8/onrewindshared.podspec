Pod::Spec.new do |s|  
  s.name = 'onrewindshared'
  s.version = '1.0.8'
  s.summary = 'Summary of onrewindshared'
  s.homepage = 'https://github.com/netcosports'

  s.author = { 'Sergei Mikhan' => 'sergei@netcosports.com' }
  s.license = {
      :type => "Copyright",
      :text => "Copyright 2020 Origins Digital"
  }

  s.platform = :ios
  s.source = { :http => 'https://origins-mobile-products.s3.eu-west-1.amazonaws.com/onrewind_player/kan/1.0.8/onrewindshared.xcframework.zip' }

  s.ios.deployment_target = '12.0'
  s.ios.vendored_frameworks = 'onrewindshared.xcframework'
  s.static_framework = true



  def s.post_install(target)
      target.build_configurations.each do |config|
          config.build_settings['ARCHS'] = ["arm64", "x86_64"]
      end        
  end    
end