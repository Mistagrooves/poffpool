require 'spec_helper'

describe Team do

  before(:each) do
    @attr = {
      :name => "Toronto Maple Leafs",
      :shortname => "leafs"
    }
  end

  it "should create a new instance given valid attributes" do
    Team.create!(@attr)
  end

  it "should require a name" do
    no_team_name = Team.new(@attr.merge({:name => ""}))
    no_team_name.should_not be_valid
  end

  it "should reject duplicate names" do 
    Team.create!(@attr)
    duplicate_team = Team.new(@attr)
    duplicate_team.should_not be_valid
  end

  it "should require a shortname" do
    no_shortname = Team.new(@attr.merge({:shortname => ""}))
    no_shortname.should_not be_valid
  end

end