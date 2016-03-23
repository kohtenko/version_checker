require 'open-uri'
require 'json'
require 'colorize'

def notifyAboutUpdates(gem_name)
	if gem_name.nil?
		puts "Pass correct gem name".red
		return
	end
	json_object = JSON.parse(open("https://rubygems.org/api/v1/versions/#{gem_name}/latest.json").read)
	specs = Gem.loaded_specs[gem_name]
	if specs.nil?
		puts "No specs found for this gem".red
		puts "Loaded specs: #{Gem.loaded_specs}".red
		return
	end
    highest_version = specs.version.to_s
	if json_object["version"].nil?
		return 
	end
	if json_object["version"] > highest_version 
		puts "Updates are available!".green
		puts "Your current version of #{gem_name} is #{highest_version}".green
		puts "Run 'gem update #{gem_name}' to get latest version #{json_object['version']}".green
		puts ""
	end      
end
