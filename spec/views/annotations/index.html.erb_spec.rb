require 'rails_helper'

RSpec.describe "annotations/index", type: :view do
  before(:each) do
    assign(:annotations, [
      Annotation.create!(
        :document => nil,
        :notes => "MyText"
      ),
      Annotation.create!(
        :document => nil,
        :notes => "MyText"
      )
    ])
  end

  it "renders a list of annotations" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
