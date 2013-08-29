Pod::Spec.new do |s|
  s.name         = "TestFlightFeedback"
  s.version      = "1.0.0"
  s.summary      = "Dropdown replacement for the feedback view controller functionality which was cuted from TestFlight SDK"
  s.homepage     = "https://github.com/DZamataev/TestFlightFeedback"
  s.license      = { :type => 'Apache', :file => 'LICENSE'}
  s.author       = { "Denis Zamataev" => "denis.zamataev@gmail.com" }

  s.requires_arc = true
  s.ios.deployment_target = '6.0'
  
  s.dependency 'TestFlightSDK', '~> 2.0.0'

  s.source       = {
      :git => "https://github.com/DZamataev/TestFlightFeedback.git",
      :tag => s.version.to_s
    }
  s.source_files = 'Core/Source/*.{h,m}'
  s.preserve_paths = 'TestFlightFeedback.xcodeproj', 'Core/Resources'

  s.post_install do |library_representation|
    Dir.chdir File.join(library_representation.sandbox_dir, 'TestFlightFeedback') do
      command = "xcodebuild -project TestFlightFeedback.xcodeproj -target 'Resource Bundle' CONFIGURATION_BUILD_DIR=../Resources"
      command << " 2>&1 > /dev/null"
      unless system(command)
        raise ::Pod::Informative, "Failed to generate TestFlightFeedback resources bundle"
      end
    end
    File.open(library_representation.copy_resources_script_path, 'a') do |file|
      file.puts "install_resource 'Resources/TestFlightFeedback.bundle'"
    end
  end

end
