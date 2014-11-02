class HomeController < ApplicationController
  def index
    @questions = Question.all
    @question = Question.new
    @fortune = Fortune.fortunes_array.sample
  end

end
