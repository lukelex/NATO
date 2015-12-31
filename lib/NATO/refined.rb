require_relative "text"

module NATO
  module Refined
    refine String do
      def to_nato
        Parser.instance.natify self
      end
    end
  end
end
