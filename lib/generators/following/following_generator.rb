require 'rails/generators/migration'

class FollowingGenerator < Rails::Generators::Base
  include Rails::Generators::Migration

  def self.source_root
    @_acts_as_followable_source_root ||= File.expand_path("../templates", __FILE__)
  end

  def self.next_migration_number(path)
    Time.now.utc.strftime("%Y%m%d%H%M%S")
  end

  def create_model_file
    template "following.rb", "app/models/following.rb"
    migration_template "create_followings.rb", "db/migrate/create_followings.rb"
  end
end
