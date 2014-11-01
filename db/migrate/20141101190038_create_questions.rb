class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text, :body
      t.string :author

      t.timestamps
    end
  end
end
