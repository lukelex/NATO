require_relative "parser"

module NATO
  class Text
    attr_reader :original, :natified, :pronunciation

    def initialize(sentence)
      @original = sentence

      natify sentence
    end

    alias_method :to_nato, :natified
    alias_method :to_s, :to_nato

    private

    def natify(sentence)
      Parser.instance.natify(sentence).tap do |natified|
        @natified = natified.map(&:first).join(" ")
        @pronunciation = natified.map(&:last).join(" ")
      end
    end
  end
end
