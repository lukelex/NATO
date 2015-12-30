require "spec_helper"

module NATO
  RSpec.describe Parser do
    Given(:parser) { Parser.instance }

    describe "#natify" do
      Then { expect(parser).to respond_to :natify }

      context "short sentence without numbers" do
        Given(:result) do
          [
            [:Alfa, :"AL-FAH"], [:Bravo, :"BRAH-VOH"],
            [:Charlie, :"CHAR-LEE"], [:Delta, :"DELL-TAH"],
            [:Echo, :"ECK-OH"]
          ]
        end

        When(:nato) { parser.natify "abcde" }

        Then { expect(nato).to eq result }
      end

      context "short sentence" do
        Given(:result) do
          [
            [:Seven, :"SEV-EN"], [:Tango, :"TANG-GO"],
            [:Papa, :"PAH-PAH"], [:Three, :TREE],
            [:November, :"NO-VEM-BER"], [:Yankee, :"YANG-KEY"]
          ]
        end

        When(:nato) { parser.natify "7tp3ny" }

        Then { expect(nato).to eq result }
      end

      context "medium sentence" do
        Given(:result) do
          [
            [:Mike, :MIKE], [:Lima, :"LEE-MAH"],
            [:Oscar, :"OSS-CAH"], [:Zulu, :"ZOO-LOO"],
            [:Juliett, :"JEW-LEE-ETT"], [:Uniform, :"YOU-NEE-FORM"],
            [:Whiskey, :"WISS-KEY"], [:Sierra, :"SEE-AIR-RAH"],
            [:Whiskey, :"WISS-KEY"], [:Kilo, :"KEY-LOH"],
            [:Romeo, :"ROW-ME-OH"], [:Hotel, :"HOH-TEL"],
            [:Foxtrot, :"FOKS-TROT"]
          ]
        end

        When(:nato) { parser.natify "mlozjuwswkrhf" }

        Then { expect(nato).to eq result }
      end

      context "medium sentence" do
        Given(:result) do
          [
            [:Mike, :MIKE], [:Lima, :"LEE-MAH"],
            [:Zero, :"ZEE-RO"], [:One, :WUN],
            [:Juliett, :"JEW-LEE-ETT"], [:Uniform, :"YOU-NEE-FORM"],
            [:Whiskey, :"WISS-KEY"], [:Sierra, :"SEE-AIR-RAH"],
            [:Eight, :AIT], [:Four, :"FOW-ER"],
            [:Six, :SIX], [:Hotel, :"HOH-TEL"],
            [:Foxtrot, :"FOKS-TROT"]
          ]
        end

        When(:nato) { parser.natify 'ml01juws846hf' }

        Then { expect(nato).to eq result }
      end
    end
  end
end
