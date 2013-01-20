require 'spec_helper'

describe "results/index" do
  before(:each) do
    assign(:results, [
      stub_model(Result,
        :name => "Name",
        :combo => "Combo",
        :reach => 1,
        :frequency => 2,
        :total_respondents => 3,
        :total_respondents => 4
      ),
      stub_model(Result,
        :name => "Name",
        :combo => "Combo",
        :reach => 1,
        :frequency => 2,
        :total_respondents => 3,
        :total_respondents => 4
      )
    ])
  end

  it "renders a list of results" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Combo".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
