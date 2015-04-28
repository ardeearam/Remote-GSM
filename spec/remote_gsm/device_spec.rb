describe 'device' do
    
  require 'remote_gsm/device'

    it 'should be able to write to SQS' do
      device = nil
      begin
        device = RemoteGsm::Device.new
        result = device.write("AT\n")
        expect(result).to_not be_nil
        expect(result[:index]).to be 1
        expect(result[:message]).to eq "AT\n"
      ensure
        device.close if !device.nil?         
      end    
    end
    
    it 'should be able to track message index' do
      device = nil
      begin
        device = RemoteGsm::Device.new
        device.write("AT\n")
        result = device.write("AT\n")
        expect(result).to_not be_nil
        expect(result[:index]).to be 2
        expect(result[:message]).to eq "AT\n"
      ensure
        device.close if !device.nil?         
      end    
    end    
    
end
