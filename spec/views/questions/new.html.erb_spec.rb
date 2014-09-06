require 'rails_helper'

RSpec.describe "questions/new", :type => :view do
  before(:each) do
    company = Company.new(
      name: 'shit company'
    )
    assign(:question, Question.new(
      :sentence => "MyString",
      :company => company
    ))
  end

  it "renders new question form" do
    render

    assert_select "form[action=?][method=?]", questions_path, "post" do

      assert_select "input#question_sentence[name=?]", "question[sentence]"

      assert_select "input#question_company[name=?]", "question[company]"
    end
  end
end
