require 'spec_helper'

module NATO
  describe Parser do
    Given(:parser) { Parser.instance }

    describe "#natify" do
      Then { parser.should respond_to :natify }

      describe "short sentence without numbers" do
        When(:nato) { parser.natify 'abcde' }

        Then { nato.should == 'Alfa Bravo Charlie Delta Echo' }
      end

      describe "short sentence with numbers" do
        When(:nato) { parser.natify '7tp3ny' }

        Then { nato.should == '7 Tango Papa 3 November Yankee' }
      end
    end
  end
end