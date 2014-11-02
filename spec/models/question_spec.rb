require 'rails_helper'

describe Question do

  before do
     @question = Question.new(author: "monkey", body: "Will I get a banana?")
  end

  subject { @question }

  it { should respond_to(:author) }
  it { should respond_to(:body) }

  it { should be_valid }

  describe  "when name of author is not present" do
    before { @question.author = "" }
    it { should_not be_valid }
  end

  describe "when body is not present" do
    before { @question.body = "" }
    it { should_not be_valid }
  end

  describe "when body is too long" do
    before { @question.body = "a" * 201 }
    it { should_not be_valid}
  end

end
