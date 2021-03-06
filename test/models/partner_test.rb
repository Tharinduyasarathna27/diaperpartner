require 'test_helper'

class PartnerTest < ActiveSupport::TestCase
  test "valid diaper bank" do
    diaper_bank = Partner.new(name: 'Charity 1')
    assert diaper_bank.valid?
  end

  test "invalid without name" do
    diaper_bank = Partner.new
    refute diaper_bank.valid?
    assert_not_nil diaper_bank.errors[:name], 'no validation error for required name field'
  end
end
