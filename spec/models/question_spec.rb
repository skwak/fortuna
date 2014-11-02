# tweet_spec.rb
# Testing validations of body (presence and length)
# Testing any addition methods you add
# tweets_controller_spec.rb
# Test each controller action
# No need to test private actions

require 'rails_helper'

describe Question do

  before { @question = Question.new(author: "monkey", body: "Will I get a banana?") }

  subject { @question }

  it { should respond_to(:author) }
  it { should respond_to(:body) }
  it { should be_valid }

end
