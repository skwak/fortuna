# Test each controller action
# No need to test private actions

require 'rails_helper'

describe QuestionsController do

  subject { "questions#index" }

  it "should get index" do
    get "index"
  end


end
