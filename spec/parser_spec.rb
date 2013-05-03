require 'spec_helper'

module NATO
  describe Parser do
    Given(:parser) { Parser.instance }

    describe "#natify" do
      Then { parser.should respond_to :natify }

      describe "short sentence without numbers" do
        Given(:result) { [[:Alfa, :"AL-FAH"], [:Bravo, :"BRAH-VOH"], [:Charlie, :"CHAR-LEE"], [:Delta, :"DELL-TAH"], [:Echo, :"ECK-OH"]] }

        When(:nato) { parser.natify 'abcde' }

        Then { nato.should == result }
      end

      describe "short sentence" do
        Given(:result) { [[:Seven, :"SEV-EN"], [:Tango, :"TANG-GO"], [:Papa, :"PAH-PAH"], [:Three, :TREE], [:November, :"NO-VEM-BER"], [:Yankee, :"YANG-KEY"]] }

        When(:nato) { parser.natify '7tp3ny' }

        Then { nato.should == result }
      end

      describe "medium sentence" do
        Given(:result) { [[:Mike, :MIKE], [:Lima, :"LEE-MAH"], [:Oscar, :"OSS-CAH"], [:Zulu, :"ZOO-LOO"], [:Juliett, :"JEW-LEE-ETT"], [:Uniform, :"YOU-NEE-FORM"], [:Whiskey, :"WISS-KEY"], [:Sierra, :"SEE-AIR-RAH"], [:Whiskey, :"WISS-KEY"], [:Kilo, :"KEY-LOH"], [:Romeo, :"ROW-ME-OH"], [:Hotel, :"HOH-TEL"], [:Foxtrot, :"FOKS-TROT"]] }

        When(:nato) { parser.natify 'mlozjuwswkrhf' }

        Then { nato.should == result }
      end

      describe "medium sentence" do
        Given(:result) { [[:Mike, :MIKE], [:Lima, :"LEE-MAH"], [:Zero, :"ZEE-RO"], [:One, :WUN], [:Juliett, :"JEW-LEE-ETT"], [:Uniform, :"YOU-NEE-FORM"], [:Whiskey, :"WISS-KEY"], [:Sierra, :"SEE-AIR-RAH"], [:Eight, :AIT], [:Four, :"FOW-ER"], [:Six, :SIX], [:Hotel, :"HOH-TEL"], [:Foxtrot, :"FOKS-TROT"]] }

        When(:nato) { parser.natify 'ml01juws846hf' }

        Then { nato.should == result }
      end
    end
  end
end