# Logger setup
class Object
    def logger_info
      "#{self.class}##{__callee__} (#{object_id})"
    end
  end
  
  class CLogger
    def self.instance
      return @logger if @logger
  
      @logger = Logging.logger($stdout)
      @logger.level = ENV['LOG_LEVEL']&.to_sym || :warn
      @logger.add_appenders \
        Logging.appenders.stdout,
        Logging.appenders.file("#{Time.now.strftime('%Y%m%d')}.log")
      @logger
    end
  end