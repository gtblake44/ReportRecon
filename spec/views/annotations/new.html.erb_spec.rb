require 'rails_helper'

RSpec.describe "annotations/new", type: :view do
  before(:each) do
    assign(:annotation, Annotation.new(
      :document => nil,
      :notes => "MyText"
    ))
  end

  it "renders new annotation form" do
    render

    assert_select "form[action=?][method=?]", annotations_path, "post" do

      assert_select "input#annotation_document_id[name=?]", "annotation[document_id]"

      assert_select "textarea#annotation_notes[name=?]", "annotation[notes]"
    end
  end
end
