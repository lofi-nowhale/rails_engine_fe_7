require 'rails_helper'

RSpec.describe "Merchants Show page" do
  it "can show the list of merchants on the index page" do
    json_response = File.read('spec/fixtures/all_merchants.json')
    stub_request(:get, "http://localhost:3000/api/v1/merchants.json")
        .to_return(status: 200, body: json_response)

    visit merchants_path

    expect(page.status_code).to eq 200

    expect(page).to have_content("Merchants")

    expect(page).to have_link("Schroeder-Jerde")

    click_link "Schroeder-Jerde"

    expect(current_path).to eq("/merchants/1")
  end
end