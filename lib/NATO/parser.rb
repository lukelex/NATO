require 'singleton'

class NATO::Parser
  include Singleton

  def natify(text)
    text.split('').map do |piece|
      NATO::DICTIONARY[piece.to_sym].to_s
    end.join ' '
  end
end