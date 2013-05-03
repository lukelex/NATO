require 'spec_helper'

module NATO
  describe Text do
    Given(:text) { Text.new 'a8h43lnr0' }

    describe "#to_nato" do
      Then { text.should respond_to :to_nato }

      And { text.to_nato.should == 'Alfa Eight Hotel Four Three Lima November Romeo Zero' }
    end

    describe "#to_s" do
      Then { text.to_s.should == ['a8h43lnr0', 'Alfa Eight Hotel Four Three Lima November Romeo Zero'] }
    end

    describe '#pronunciation' do
      Then { text.should respond_to :pronunciation }

      And { text.pronunciation.should == 'AL-FAH AIT HOH-TEL FOW-ER TREE LEE-MAH NO-VEM-BER ROW-ME-OH ZEE-RO' }
    end
  end
end