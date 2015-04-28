require 'remote_gsm'
require 'json'
require 'jar/aws-java-sdk-1.9.20.1.jar'
require 'jar/commons-logging-1.2.jar'
require 'jar/httpclient-4.4.jar'
require 'jar/httpcore-4.4.jar'
require 'jar/jackson-annotations-2.5.0.jar'
require 'jar/jackson-core-2.5.0.jar'
require 'jar/jackson-databind-2.3.1.jar'

class RemoteGsm
  class Device
    
    import 'com.amazonaws.services.sqs.AmazonSQSClient'
    import 'com.amazonaws.auth.BasicAWSCredentials'
    
    def initialize
      remote_gsm_config = RemoteGsm.config
      @remote_gsm_write = remote_gsm_config[:remote_gsm_write]
      @remote_gsm_read = remote_gsm_config[:remote_gsm_read]
      @sqs = AmazonSQSClient.new(BasicAWSCredentials.new(remote_gsm_config[:aws_access_key_id],
      remote_gsm_config[:aws_secret_access_key]))
      @message_counter_write = 1
    end
    
    def write(characters)
        message =  {index: @message_counter_write, message: characters}
        @sqs.send_message(@remote_gsm_write, message.to_json)
        # send_message will throw an exception if failure occurs, so 
        # assume success after this line.
        @message_counter_write += 1
        message
    end
    
    def close
      #CLeanup methods here 
    end
  end
end