require 'spec_helper'

describe Car do
  let(:blanks) {["", nil]}
  let(:invalid_years) {[1979, 2016, 0]}
  let(:invalid_nums) {[-100, "10abc23", "ab123cd"]}

  it {should have_valid(:color).when("Blue")}
  it {should_not have_valid(:color).when(*blanks)}

  it {should have_valid(:year).when(1981)}
  it {should_not have_valid(:year).when(*blanks, *invalid_nums, *invalid_years)}

  it {should have_valid(:milage).when(1000)}
  it {should_not have_valid(:milage).when(*blanks, *invalid_nums)}
end
