class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new(question_params)
  end

  def create
    @question.new(question_params)
    if @question.save
      redirect_to :home_path
    else
      render :new
    end
  end

  def show
    find_question
  end

  private

  def find_question
    @question = Question.find(params[:id])
  end

  def question_params
    (params.require(:question).permit(:body, :author))
  end

end
