require 'spec_helper'

describe "feedbacks/new" do
  before(:each) do
    assign(:feedback, stub_model(Feedback,
      :description => "MyText",
      :sprint => nil,
      :type => false
    ).as_new_record)
  end

  it "renders new feedback form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => feedbacks_path, :method => "post" do
      assert_select "textarea#feedback_description", :name => "feedback[description]"
      assert_select "input#feedback_sprint", :name => "feedback[sprint]"
      assert_select "input#feedback_type", :name => "feedback[type]"
    end
  end
end
