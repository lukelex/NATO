require "singleton"
require_relative "dictionary"

module NATO
  class Parser
    include Singleton

    def natify(text)
      text.split("").map do |piece|
        DICTIONARY.fetch piece.downcase.to_sym
      end
    end

    alias_method :to_nato, :natify
  end
end
