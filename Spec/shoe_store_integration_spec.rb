require('spec_helper')

describe('viewing the homepage', {:type => :feature}) do
  it ('allows a user to add a store') do
    visit('/')

    fill_in('store name:', :with => "Imelda's Extra-Wide")
    click_button('Submit')
    expect(page).to have_content("Imelda's Extra-Wide")
  end
end
