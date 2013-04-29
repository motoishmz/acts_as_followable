# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{acts_as_followable}
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["motoishmz"]
  s.autorequire = %q{acts_as_followable}
  s.date = %q{2012-07-09}
  s.description = %q{Plugin/Gem that provides following functionality}
  s.email = %q{shimizu.motoi@gmail.com}
  s.extra_rdoc_files = ["README.markdown", "MIT-LICENSE"]
  s.files = ["MIT-LICENSE", 
             "README.markdown", 
             "lib/acts_as_followable.rb", 
             "lib/following_methods.rb", 
             "lib/followable_methods.rb", 
             "lib/generators", 
             "lib/generators/following", 
             "lib/generators/following/following_generator.rb", 
             "lib/generators/following/templates", 
             "lib/generators/following/templates/following.rb", 
             "lib/generators/following/templates/create_followings.rb", 
             "init.rb", 
             "install.rb"]
  s.has_rdoc = false
  s.homepage = %q{https://github.com/motoishmz/acts_as_followable}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.8.11}
  s.summary = %q{Plugin/gem that provides following functionality}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 1

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
