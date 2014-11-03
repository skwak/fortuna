class Question < ActiveRecord::Base
  validates :author, presence: true
  validates :body, presence: true
  validates_length_of :body, minimum: 4, maximum: 200

  def self.question_and_fortune(params)
    question = Question.new(params)
    question.fortune = Fortune.new.fortunes_array.sample
    question
  end

  def self.sort_by_time
    all.sort_by { |question| question.created_at }.reverse
  end
end
