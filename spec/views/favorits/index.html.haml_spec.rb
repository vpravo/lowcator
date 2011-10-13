require 'spec_helper'

describe "favorits/index.html.haml" do
  before(:each) do
    assign(:favorits, [
      stub_model(Favorit,
        :user_id => 1
      ),
      stub_model(Favorit,
        :user_id => 1
      )
    ])
  end

  it "renders a list of favorits" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
