require "bundler/gem_tasks"

task :default do
  puts "Remote GSM"
  puts "Available commands:"
  puts "server['COMX']    - Start Remote GSM server at COM Port X (e.g., COM4)"
  puts "console           - Start Remote GSM console at COM Port X"
  puts "healtcheck        - Check for necessary binary dependencies, and advise where to download"
end

task [:server, :port] => [:healthcheck, :paths] do 
  
end

task :console => [:healthcheck, :paths] do
  require 'remote_gsm/console'
  
  RemoteGsm::Console.run
end

task :healthcheck do
  #TODO check for necessary files
end

task :paths do
  lib = File.expand_path('../lib', __FILE__)
  $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
end