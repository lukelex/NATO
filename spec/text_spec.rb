require "spec_helper"

module NATO
  describe Text do
    Given(:text) { Text.new "a8h43lnr0" }

    describe "#to_nato" do
      Then { expect(text).to respond_to :to_nato }

      And { expect(text.to_nato).to eq "Alfa Eight Hotel Four Three Lima November Romeo Zero" }
    end

    describe "#to_s" do
      Then do
        expect(text.to_s).to eq \
          ["a8h43lnr0", "Alfa Eight Hotel Four Three Lima November Romeo Zero"]
      end
    end

    describe "#pronunciation" do
      Then { expect(text).to respond_to :pronunciation }

      And do
        expect(text.pronunciation).to eq \
          "AL-FAH AIT HOH-TEL FOW-ER TREE LEE-MAH NO-VEM-BER ROW-ME-OH ZEE-RO"
      end
    end
  end
end
