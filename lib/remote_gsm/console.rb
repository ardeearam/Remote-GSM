require 'io/console'
require 'java'

class RemoteGsm
  class Console
    def self.run
      puts "RemoteGsm::Console >"
      loop do 
        input = STDIN.gets
        print input
        break if input == "!!!\n"
      end
    end    
  end
end