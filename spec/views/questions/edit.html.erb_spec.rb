require 'rails_helper'

RSpec.describe "questions/edit", :type => :view do
  before(:each) do
    @question = assign(:question, Question.create!(
      :sentence => "MyString",
      :company => ""
    ))
  end

  it "renders the edit question form" do
    render

    assert_select "form[action=?][method=?]", question_path(@question), "post" do

      assert_select "input#question_sentence[name=?]", "question[sentence]"

      assert_select "input#question_company[name=?]", "question[company]"
    end
  end
end
