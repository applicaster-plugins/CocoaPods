Pod::Spec.new do |s|  
    s.name = 'kantarmedia-streaming-ios'
    s.version = '1.13.1'
    s.summary = 'Kantar SDK summary'
    s.homepage = 'https://github.com/applicaster-plugins/kantarmedia-streaming-ios'

    s.platform = :ios
    s.source = { :git => "git@github.com:applicaster-plugins/kantarmedia-streaming-ios.git", :tag => "#{s.version}" }

    s.ios.deployment_target = '14.0'

    s.license = {
        :type => "Copyright",
        :text => "Copyright 2020 Kantar media"
    }

    s.author = { 'Ilya Kozlov' => 'ilya02k@gmail.com' }
    
    s.vendored_frameworks = 'kantarmedia-streaming-ios.xcframework'
    s.preserve_paths = '**/kantarmedia-streaming-ios.a'
    #s.vendored_libraries = '**/kantarmedia-streaming-ios.a'
    s.source_files  = ['src/**/*.{h,m,swift}','**/*.{h,m,swift,a}']
    s.resources = ['src/**/*.{png,xib}']
end