class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.belongs_to :question, index: true, foreign_key: true
      t.text :body

      t.timestamps
    end
  end
end
