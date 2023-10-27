# require 'rails_helper'

# RSpec.describe "Merchant Items index page" do
#   it "displays all of that merchant's items as a link to that item" do

#     json_response = File.read('spec/fixtures/merchant_items.json')
    
#     stub_request(:get, "http://localhost:3000/api/v1/merchants//items.json")
#       .to_return(status: 200, body: json_response)

#     visit "/merchants/99"

#     expect(page.status_code).to eq 200 

#     expect(page).to have_content("Fahey-Stiedemann")
#     expect(page).to have_link("Item Excepturi Rem")

#     click_link "Item Excepturi Rem"

#     expect(current_path).to eq("/merchants/99/items/2425")

#   end

# end