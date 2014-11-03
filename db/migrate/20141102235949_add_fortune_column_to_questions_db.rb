class AddFortuneColumnToQuestionsDb < ActiveRecord::Migration
  def change
    add_column(:questions, :fortune, :string)
  end
end
