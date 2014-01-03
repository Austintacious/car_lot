require 'spec_helper'

describe "User views all cars" do
  
  it 'sees all of the cars listed on the index page' do
    car = FactoryGirl.create(:car)
    visit cars_path

    expect(page).to have_content(car.color)
    expect(page).to have_content(car.year)
  end

end