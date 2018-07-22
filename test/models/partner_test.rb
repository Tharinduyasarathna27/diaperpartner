require 'test_helper'

class PartnerTest < ActiveSupport::TestCase
  test "valid partner" do
    partner = Partner.new(name: 'Charity 1')
    assert partner.valid?
  end

  test "invalid without name" do
    partner = Partner.new
    refute partner.valid?
    assert_not_nil partner.errors[:name], 'no validation error for required name field'
  end
end
