Pod::Spec.new do |s|
  s.name             = 'Dipang90View'
  s.version          = '0.1.0'
  s.summary          = 'Uiview test demo'
 
  s.description      = <<-DESC
This view changes its label name properly gradually makes your app look fantastic!
                       DESC
 
  s.homepage         = 'https://github.com/dipang90/Dipang90View'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Dipang Sheth' => 'shethdipang@gmail.com' }
  s.source           = { :git => 'https://github.com/dipang90/Dipang90View.git', :tag => s.version.to_s }  
 
  s.ios.deployment_target = '10.0'
  s.source_files = 'Dipang90View/NoDataView.swift'
 
end