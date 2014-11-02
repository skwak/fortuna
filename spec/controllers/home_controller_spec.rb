require 'rails_helper'

describe HomeController do

  subject { "index" }

  it "should get index" do
    get :index
    expect(response).to be_success
  end

end
