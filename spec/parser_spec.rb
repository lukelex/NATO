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

      describe "short sentence" do
        When(:nato) { parser.natify '7tp3ny' }

        Then { nato.should == 'Seven Tango Papa Three November Yankee' }
      end

      describe "medium sentence" do
        When(:nato) { parser.natify 'mlozjuwswkrhf' }

        Then { nato.should == 'Mike Lima Oscar Zulu Juliett Uniform Whiskey Sierra Whiskey Kilo Romeo Hotel Foxtrot' }
      end

      describe "medium sentence" do
        When(:nato) { parser.natify 'ml01juws846hf' }

        Then { nato.should == 'Mike Lima Zero One Juliett Uniform Whiskey Sierra Eight Four Six Hotel Foxtrot' }
      end
    end
  end
end