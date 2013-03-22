class NATO::Text
  attr_reader :original, :natified, :pronunciation

  def initialize(sentence)
    @original = sentence
    @natified = NATO::Parser.instance.natify sentence
  end

  def to_nato
    @natified
  end

  def to_s
    [@original, @natified]
  end
end