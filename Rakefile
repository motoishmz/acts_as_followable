require 'rubygems'
require 'rake/gempackagetask'

PLUGIN = "acts_as_followable"
GEM = "acts_as_followable"
GEM_VERSION = "1.0.0"
EMAIL = "shimizu.motoi@gmail.com"
SUMMARY = "Plugin/gem that provides favorite functionality"

spec = Gem::Specification.new do |s|
  s.name = GEM
  s.version = GEM_VERSION
  s.platform = Gem::Platform::RUBY
  s.has_rdoc = false
  s.extra_rdoc_files = ["README.markdown", "MIT-LICENSE"]
  s.summary = SUMMARY
  s.description = s.summary
  s.author = 'motoishmz'
  s.email = EMAIL

  # Uncomment this to add a dependency
  # s.add_dependency "foo"

  s.require_path = 'lib'
  s.autorequire = GEM
  s.files = %w(MIT-LICENSE README.markdown) + Dir.glob("{generators,lib,tasks}/**/*") + %w(init.rb install.rb)
end


Rake::GemPackageTask.new(spec) do |pkg|
  pkg.gem_spec = spec
end

desc "Install the gem"
task :install => [:package] do
  sh %{sudo gem install pkg/#{GEM}-#{GEM_VERSION}}
end

desc "Regenerate gemspec"
task :gemspec do
  File.open("#{GEM}.gemspec", 'w') do |f|
    f.write(spec.to_ruby)
  end
end

