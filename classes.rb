# frozen_string_literal: true

require 'colorize'

module CharTiming
  def self.slow(string, timeout)
    string.each_char do |c|
      print(c)
      sleep(timeout)
    end
  end
end

def exit_program
  exit(0)
end

module Calculator
  def self.subtract(num1, num2)
    num1 - num2
  end

  def self.add(num1, num2)
    num1 + num2
  end
end

class Wolf
  def growl
    "'GRRRrrrr...!!!'"
  end

  def pur
    "'Puurr...'"
  end

  def talk
    CharTiming.slow("'I don't think now is the time for talking, pal.'", 0.08)
  end
end
