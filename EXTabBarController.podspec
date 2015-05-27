Pod::Spec.new do |s|
  s.name         = "EXTabBarController"
  s.version      = "1.0.0"
  s.summary      = "The last TabBarController you need."

  s.description  = <<-DESC
                   Easily create TabBarController
                   DESC

  s.homepage     = "https://github.com/Draveness/EXTabBarController"
  s.license      = "MIT"
  s.author             = { "Draveness" => "stark.draven@gmail.com" }
  s.source       = { :git => "https://github.com/Draveness/EXTabBarController.git", :tag => s.version }
  s.source_files  = "Classes/*.{h,m}"
end
