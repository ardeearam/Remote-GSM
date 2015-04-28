describe 'terminal' do
    
  require 'remote_gsm/terminal'

    it 'should be able to write to SQS' do
      terminal = nil
      begin
        terminal = RemoteGsm::Terminal.new
        result = terminal.write("AT\n")
        expect(result).to_not be_nil
        expect(result[:index]).to be 1
        expect(result[:message]).to eq "AT\n"
      ensure
        terminal.close if terminal.nil?         
      end    
    end
    
    it 'should be able to track message index' do
      terminal = nil
      begin
        terminal = RemoteGsm::Terminal.new
        terminal.write("AT\n")
        result = terminal.write("AT\n")
        expect(result).to_not be_nil
        expect(result[:index]).to be 2
        expect(result[:message]).to eq "AT\n"
      ensure
        terminal.close if terminal.nil?         
      end    
    end    
    
end
