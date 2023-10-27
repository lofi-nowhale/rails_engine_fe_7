require 'rails_helper'

RSpec.describe Merchant do
  it "exists and has readable attributes" do
    merchant = Merchant.new(id: 1, name: "Shop 1")

    expect(merchant).to be_a Merchant
    expect(merchant.id).to eq 1
    expect(merchant.name).to eq "Shop 1"
  end
end