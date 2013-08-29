Pod::Spec.new do |s|
  s.name         = "TestFlightFeedback"
  s.version      = "1.0.0"
  s.summary      = "Dropdown replacement for the feedback view controller functionality which was cuted from TestFlight SDK"
  s.homepage     = "https://github.com/DZamataev/TestFlightFeedback"
  s.license      = { :type => 'Apache', :file => 'LICENSE'}
  s.author       = { "Denis Zamataev" => "denis.zamataev@gmail.com" }

  s.requires_arc = true
  s.ios.deployment_target = '6.0'
  
  s.source       = {
    :git => "https://github.com/DZamataev/TestFlightFeedback.git",
    :tag => s.version.to_s
  }
  s.source_files = 'TestFlightFeedback/*'
  
  s.dependency 'TestFlightSDK', '2.0.0'

  s.default_subspec = 'Core'

  s.subspec 'Core' do |a|
    a.source_files = 'TestFlightFeedback/*'
  end

  s.subspec 'Example' do |a|
    a.source_files = 'TestFlightFeedbackExample/*'
    a.dependency 'TestFlightFeedback/Core'
  end
end
