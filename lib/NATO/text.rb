require_relative "parser"

module NATO
  class Text
    attr_reader :original, :natified, :pronunciation

    def initialize(sentence)
      @original = sentence

      sentence_natified = Parser.instance.natify sentence

      @natified = sentence_natified.map { |item| item.first }.join ' '
      @pronunciation = sentence_natified.map { |item| item.last }.join ' '
    end

    def natified
      @natified ||= ""
    end

    def pronunciation
      @pronunciation ||= ""
    end

    def to_nato
      @natified
    end
    alias_method :to_s, :to_nato
  end
end
