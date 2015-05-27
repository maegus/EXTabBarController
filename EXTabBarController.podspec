Pod::Spec.new do |s|
  s.name         = "EXTabBarController"
  s.version      = "1.0.0"
  s.summary      = "The last TabBarController you need."

  s.description  = <<-DESC
                   Easily create TabBarController, the UITabBarController is to difficult to use. With this library, you can manipulate TabBarController more easily.
                   DESC

  s.homepage     = "https://github.com/Draveness/EXTabBarController"
  s.license      = "MIT"
  s.author             = { "Draveness" => "stark.draven@gmail.com" }
  s.source       = { :git => "https://github.com/Draveness/EXTabBarController.git", :tag => s.version }
  s.platform     = :ios, "6.0"
  s.source_files  = "Classes/*.{h,m}"

  s.frameworks = 'UIKit'
end
