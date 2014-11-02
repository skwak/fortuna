class Question < ActiveRecord::Base
  validates :body, presence: true
  validates_length_of :body, minimum: 4, maximum: 200
end
