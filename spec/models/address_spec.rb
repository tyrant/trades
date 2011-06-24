require 'spec_helper'

describe Address do
  it "saves with valid lat+lng coordinates" do
    @address = Factory.build :address, :lat => 5.0, :lng => 5.5
    @address.save
    assert @address.errors.length == 0, "Address should have saved without errors, but didn't"
  end
  
  it "doesn't save with invalid lat" do
    @address = Factory.build :address, :lat = 999
    @address.save
    assert @address.errors.length == 1, "Address model should throw tantrum at lat=999"
  end
  
  it "doesn't save with invalid lng" do
    @address = Factory.build :address, :lng = -999
    @address.save
    assert @address.errors.length == 1, "Address model should throw tantrum at lng=999"
  end
end