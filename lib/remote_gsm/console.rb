class RemoteGsm
  class Console
    def self.run
      puts "RemoteGsm::Console"
      loop do 
        print ">"
        input = STDIN.gets.chomp
        break if input =~ /^quit$/i
      end
    end    
  end
end