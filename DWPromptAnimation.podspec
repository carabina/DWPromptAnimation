Pod::Spec.new do |s|
  s.name         = "DWPromptAnimation"
  s.version      = "0.0.1"
  s.summary      = "A library is suitable for loading waiting for."
  s.description      = <<-DESC
                       In the place such as network load, page data waiting for, the framework can be used.
                       DESC
  s.homepage     = "https://github.com/dwanghello/DWPromptAnimation"
  s.license      = "MIT"
  s.author             = { "dwanghello" => "dwang.hello@outlook.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "hhttps://github.com/dwanghello/DWPromptAnimation.git", :tag => s.version.to_s }
  s.source_files  = "DWPromptAnimation", "DWPromptAnimationTest/DWPromptAnimation/**/*.{h,m}"
  s.frameworks = "UIKit", "Foundation","ImageIO"
  s.resources    = "DWPromptAnimationTest/DWPromptAnimation/CustomSources","WPromptAnimationTest/DWPromptAnimation/SourcesGIF","DWPromptAnimationTest/DWPromptAnimation/CustomSources',"WPromptAnimationTest/DWPromptAnimation/SourcesSequence"
  s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
 
end
