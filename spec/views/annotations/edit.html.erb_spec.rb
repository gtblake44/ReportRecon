require 'rails_helper'

RSpec.describe "annotations/edit", type: :view do
  before(:each) do
    @annotation = assign(:annotation, Annotation.create!(
      :document => nil,
      :notes => "MyText"
    ))
  end

  it "renders the edit annotation form" do
    render

    assert_select "form[action=?][method=?]", annotation_path(@annotation), "post" do

      assert_select "input#annotation_document_id[name=?]", "annotation[document_id]"

      assert_select "textarea#annotation_notes[name=?]", "annotation[notes]"
    end
  end
end
