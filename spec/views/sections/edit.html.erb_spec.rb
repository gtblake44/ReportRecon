require 'rails_helper'

RSpec.describe "sections/edit", type: :view do
  before(:each) do
    @section = assign(:section, Section.create!(
      :name => "MyString",
      :category => nil
    ))
  end

  it "renders the edit section form" do
    render

    assert_select "form[action=?][method=?]", section_path(@section), "post" do

      assert_select "input#section_name[name=?]", "section[name]"

      assert_select "input#section_category_id[name=?]", "section[category_id]"
    end
  end
end
