require 'spec_helper'

module NATO
  describe Text do
    Given(:text) { Text.new 'a8h43lnr0' }

    Then { text.to_nato.should == 'Alfa 8 Hotel 4 3 Lima November Romeo 0' }
    And { text.to_s.should == ['a8h43lnr0', 'Alfa 8 Hotel 4 3 Lima November Romeo 0'] }
  end
end