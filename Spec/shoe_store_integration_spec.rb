require('spec_helper')

describe("viewing the homepage", {:type => :feature}) do
  it ("allows a user to add a store") do
    visit("/")

    fill_in("store name:", :with => "Imelda's Extra-Wide")
    click_button("Submit")
    expect(page).to have_content("Imelda's Extra-Wide")
  end
end

describe("viewing the store info", {:type => :feature}) do
  it ("allows a user to view a store's details") do
    visit("/")
    fill_in("store name:", :with => "Imelda's Extra-Wide")
    click_button("Submit")
    click_link("Imelda's Extra-Wide")
    expect(page).to have_content("Add a brand to this store:")
  end
end

describe("adding a brand", {:type => :feature}) do
  it ("allows a user to add a brand to a particular store") do
    visit("/")
    fill_in("store name:", :with => "Imelda's Extra-Wide")
    click_button("Submit")

    click_link("Imelda's Extra-Wide")
    fill_in("Add a brand to this store:", :with => "wolky")
    expect(page).to have_content("wolky")
  end
end