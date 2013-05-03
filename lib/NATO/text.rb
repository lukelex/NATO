class NATO::Text
  attr_reader :original, :natified, :pronunciation

  def initialize(sentence)
    @original = sentence

    sentence_natified = NATO::Parser.instance.natify sentence

    @natified = sentence_natified.map { |item| item.first }.join ' '
    @pronunciation = sentence_natified.map { |item| item.last }.join ' '
  end

  def natified
    @natified ||= ''
  end

  def pronunciation
    @pronunciation ||= ''
  end

  def to_nato
    @natified
  end

  def to_s
    [@original, @natified]
  end
end