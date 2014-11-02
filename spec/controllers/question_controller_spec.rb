# Test each controller action
# No need to test private actions

require 'rails_helper'

describe QuestionsController do

  subject { "questions#index" }

  it "should get index" do
    get :index
    expect(response).to be_success
  end

  it "responds successfully with an HTTP 200 status code" do
    get :index
    expect(response).to be_success
    expect(response).to have_http_status(200)
  end

  it "loads all of the questions into @questions" do
      question1, question2 = Question.create!(author: "blah", body: "alwkerja;lrekwr"), Question.create!(author: "zoom", body: "a;lwerkajw;rlkwaer")
      get :index

      expect(assigns(:questions)).to match_array([question1, question2])
  end

  subject { "questions#new" }

  it "creates a question and redirects to the home path" do
    get :new
    expect(response).to render_template(:new)

    post "create", :question => {:author => "Sally", :body => "Am I alive?" }

    expect(response).to redirect_to home_path

  end




end
