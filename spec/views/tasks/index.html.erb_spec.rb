require 'spec_helper'

describe "tasks/index" do
  before(:each) do
    assign(:tasks, [
      stub_model(Task,
        :description => "Description",
        :status => "Status"
      ),
      stub_model(Task,
        :description => "Description",
        :status => "Status"
      )
    ])
  end

  it "renders a list of tasks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
