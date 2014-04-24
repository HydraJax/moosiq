require 'spec_helper'

describe "bands/index" do
  before(:each) do
    assign(:bands, [
      stub_model(Band,
        :name => "Name",
        :agent => nil
      ),
      stub_model(Band,
        :name => "Name",
        :agent => nil
      )
    ])
  end

  it "renders a list of bands" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
