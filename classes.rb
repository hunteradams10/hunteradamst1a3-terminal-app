# frozen_string_literal: true

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

# module Calculator
#   def self.subtract(num1, num2)
#     result = num1 - num2
#     puts result
#   end
# end
