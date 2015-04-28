require 'yaml'

class RemoteGsm
  def self.config
    YAML::load(File.read('config.yml'))
  end
end