require "singleton"
require_relative "dictionary"

module NATO
  class Parser
    include Singleton

    def natify(text)
      text.split("").map do |piece|
        DICTIONARY.fetch(piece.to_sym)
      end
    end
  end
end
