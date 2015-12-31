require "spec_helper"

require "NATO/refined"

module NATO
  RSpec.describe Refined do
    context "without refining" do
      Then do
        expect { "".to_nato }
          .to raise_error NoMethodError
      end
    end
  end

  module Test
    using Refined

    RSpec.describe Refined do
      context "refining" do
        Then do
          expect { "".to_nato }.to_not raise_error
        end
      end
    end
  end
end
