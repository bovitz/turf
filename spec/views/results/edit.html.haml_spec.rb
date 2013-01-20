require 'spec_helper'

describe "results/edit" do
  before(:each) do
    @result = assign(:result, stub_model(Result,
      :name => "MyString",
      :combo => "MyString",
      :reach => 1,
      :frequency => 1,
      :total_respondents => 1,
      :total_respondents => 1
    ))
  end

  it "renders the edit result form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => results_path(@result), :method => "post" do
      assert_select "input#result_name", :name => "result[name]"
      assert_select "input#result_combo", :name => "result[combo]"
      assert_select "input#result_reach", :name => "result[reach]"
      assert_select "input#result_frequency", :name => "result[frequency]"
      assert_select "input#result_total_respondents", :name => "result[total_respondents]"
      assert_select "input#result_total_respondents", :name => "result[total_respondents]"
    end
  end
end
