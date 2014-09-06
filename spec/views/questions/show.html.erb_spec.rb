require 'rails_helper'

RSpec.describe "questions/show", :type => :view do
  before(:each) do
    @question = assign(:question, Question.create!(
      :sentence => "Sentence",
      :company => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Sentence/)
    expect(rendered).to match(//)
  end
end
