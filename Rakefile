require_relative 'lib/app'
require 'sinatra/activerecord/rake'

namespace :db do
  desc "Migrate the database"
  task(:migrate => :environment) do
    ActiveRecord::Base.logger = Logger.new(STDOUT)
    ActiveRecord::Migration.verbose = true
    ActiveRecord::Migrator.migrate("db/migrate")
  end
end

task :environment do
	thin_command = "thin start -R config.ru"
	if (ENV['OS'] =~ /Windows/)
		sh thin_command
	else
  	sh "rerun '#{thin_command}'"
  end
end