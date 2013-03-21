require 'singleton'

class NATO::Parser
  include Singleton

  def natify(text)
    text.split('').map do |piece|
      if is_numeric? piece
        piece
      else
        NATO::DICTIONARY[piece.to_sym].to_s || piece
      end
    end.join ' '
  end

private
  def is_numeric?(obj)
    obj.to_s.match(/\A[+-]?\d+?(\.\d+)?\Z/)
  end
end