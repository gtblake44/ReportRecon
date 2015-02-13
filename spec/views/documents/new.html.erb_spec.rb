require 'rails_helper'

RSpec.describe "documents/new", type: :view do
  before(:each) do
    assign(:document, Document.new(
      :link_to_file => "MyString",
      :section => nil
    ))
  end

  it "renders new document form" do
    render

    assert_select "form[action=?][method=?]", documents_path, "post" do

      assert_select "input#document_link_to_file[name=?]", "document[link_to_file]"

      assert_select "input#document_section_id[name=?]", "document[section_id]"
    end
  end
end
