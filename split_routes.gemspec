$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "split_routes/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "split_routes"
  s.version     = SplitRoutes::VERSION
  s.authors     = ["mars"]
  s.email       = ["578595193@qq.com"]
  s.homepage    = "https://github.com/wuyuedefeng/SplitRoutes"
  s.summary     = "SplitRoutes."
  s.description = "Split Routes to More Files"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "< 6"

  s.add_development_dependency "sqlite3"
end
