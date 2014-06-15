require_relative 'lib/app'

task :default do
	thin_command = "thin start -R config.ru"
	if (ENV['OS'] =~ /Windows/)
		sh thin_command
	else
  	sh "rerun '#{thin_command}'"
  end
end