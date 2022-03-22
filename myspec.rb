# frozen_string_literal: true

require 'cspec'
require_relative 'clogger'

#############################################
#              Code goes here               #
#############################################

class Banana
  def peel
    "peeled"
  end
  def eat
    "yummy"
  end
  def chop(pieces)
    if pieces == 0
      return "i can't do that"
    end
    "chopped into #{pieces} pieces"
  end

end

#############################################

result = CSpec::Runner.run!("#{Dir.pwd}/specs.csv")
exit result ? 0 : 1
