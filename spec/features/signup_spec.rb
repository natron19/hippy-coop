require 'rails_helper' 

describe 'new member page' do 

  it "add a member" do 

    visit "members/new"
    expect(page).to have_content("New Member")

  end 

  it "should add a user" do
    visit "members/new"
    
    fill_in 'First name', :with => 'test_firstName'
    fill_in 'Last name', :with => 'test_lastName'
    click_button 'Create Member'

    expect(page).to have_content("Rent Due")
  end 

end 