require 'rails_helper'

RSpec.describe "documents/edit", type: :view do
  before(:each) do
    @document = assign(:document, Document.create!(
      :link_to_file => "MyString",
      :section => nil
    ))
  end

  it "renders the edit document form" do
    render

    assert_select "form[action=?][method=?]", document_path(@document), "post" do

      assert_select "input#document_link_to_file[name=?]", "document[link_to_file]"

      assert_select "input#document_section_id[name=?]", "document[section_id]"
    end
  end
end
