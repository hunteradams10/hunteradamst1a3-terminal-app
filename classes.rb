# frozen_string_literal: true

module CharTiming
  def self.slow(string, timeout)
    string.each_char do |c|
      print(c)
      sleep(timeout)
    end
  end
end

module HitPoints
  def self.take(num1, num2)
    result = num1 - num2
    puts result
  end
end
