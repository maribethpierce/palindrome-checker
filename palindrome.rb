require 'pry'

class Palindrome
  def initialize(words)
    @words = words.downcase.tr('^a-z', '')
    @letters = @words.split("")
  end

  def is_palindrome?
    length = @letters.length
    if length % 2 == 0
       half = length / 2
    else
      half = (length - 1) / 2
    end
    beginning = @letters[0..half]
    beginning.reverse!
    ending = @letters[(half)..(length - 1)]
    ending == beginning
  end
end
