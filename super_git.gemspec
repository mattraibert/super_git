# encoding: utf-8

Gem::Specification.new do |gem|
  gem.name = 'super_git'
  gem.version = "0.0.1.SNAPSHOT"
  gem.license = "GPLv3"
  gem.summary = "helps you keep track of all your gits"
  gem.homepage = "http://github.com/mattraibert/super_git"
  gem.author = "Matt J Raibert"
  gem.email = 'mattraibert@gmail.com'
  gem.executables = ["gitb", "gitst", "git_branch"]
  gem.files = ["Rakefile", "README.md", "LICENSE.txt"]
  gem.files += Dir["lib/**/*"]
  gem.test_files = Dir["test/**/*"]
end