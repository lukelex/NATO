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

      describe "medium sentence without numbers" do
        When(:nato) { parser.natify 'mlozjuwswkrhf' }

        Then { nato.should == 'Mike Lima Oscar Zulu Juliett Uniform Whiskey Sierra Whiskey Kilo Romeo Hotel Foxtrot' }
      end

      describe "medium sentence with numbers" do
        When(:nato) { parser.natify 'ml01juws846hf' }

        Then { nato.should == 'Mike Lima 0 1 Juliett Uniform Whiskey Sierra 8 4 6 Hotel Foxtrot' }
      end
    end
  end
end