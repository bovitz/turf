require 'spec_helper'

describe "results/new" do
  before(:each) do
    assign(:result, stub_model(Result,
      :name => "MyString",
      :combo => "MyString",
      :reach => 1,
      :frequency => 1,
      :total_respondents => 1,
      :total_respondents => 1
    ).as_new_record)
  end

  it "renders new result form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => results_path, :method => "post" do
      assert_select "input#result_name", :name => "result[name]"
      assert_select "input#result_combo", :name => "result[combo]"
      assert_select "input#result_reach", :name => "result[reach]"
      assert_select "input#result_frequency", :name => "result[frequency]"
      assert_select "input#result_total_respondents", :name => "result[total_respondents]"
      assert_select "input#result_total_respondents", :name => "result[total_respondents]"
    end
  end
end
