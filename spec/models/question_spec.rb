# tweet_spec.rb
# Testing validations of body (presence and length)
# Testing any addition methods you add
# tweets_controller_spec.rb
# Test each controller action
# No need to test private actions

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

end
