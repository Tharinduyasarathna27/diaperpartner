require 'test_helper'

class DiaperBankTest < ActiveSupport::TestCase
  test "valid diaper bank" do
    diaper_bank = DiaperBank.new(name: 'Sweet Cheeks')
    assert diaper_bank.valid?
  end

  test "invalid without name" do
    diaper_bank = DiaperBank.new
    refute diaper_bank.valid?
    assert_not_nil diaper_bank.errors[:name], 'no validation error for required name field'
  end
end
