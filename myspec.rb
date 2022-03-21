# frozen_string_literal: true

require 'cspec'
require_relative 'clogger'

#############################################
#              Code goes here               #
#############################################

class MyStringUtil
  def hello
    'hello'
  end
end

#############################################

result = CSpec::Runner.run!("#{Dir.pwd}/specs.csv")
exit result ? 0 : 1
