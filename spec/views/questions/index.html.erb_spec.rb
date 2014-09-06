require 'rails_helper'

RSpec.describe "questions/index", :type => :view do
  before(:each) do
    assign(:questions, [
      Question.create!(
        :sentence => "Sentence",
        :company => ""
      ),
      Question.create!(
        :sentence => "Sentence",
        :company => ""
      )
    ])
  end

  it "renders a list of questions" do
    render
    assert_select "tr>td", :text => "Sentence".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
