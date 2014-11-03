class HomeController < ApplicationController
  def index
    @questions = Question.sort_by_time
    @question = Question.new
  end

end
