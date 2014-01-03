require 'spec_helper'

describe "User adds a new car" do

  context "with valid attributes" do
    it 'creates a new car' do
      visit '/cars/new'
      fill_in "Color", with: "Bloo"
      fill_in "Year", with: 2012
      fill_in "Milage", with: 525600
      fill_in "Description", with: "She ain't beautiful, but she'll getcha there."
      click_on "Create Car"
      expect(page).to have_content("Bloo")
    end

    it 'creates a car without a description' do
      visit '/cars/new'
      fill_in "Color", with: "Bloo"
      fill_in "Year", with: 2012
      fill_in "Milage", with: 525600
      click_on "Create Car"
      expect(page).to have_content("Bloo")
    end
  end

  context "without valid attributes" do
    it 'will not save a car without proper attributes' do
      visit '/cars/new'
      click_on "Create Car"
      expect(page).to have_content("can't be blank")
    end
  end
  
end