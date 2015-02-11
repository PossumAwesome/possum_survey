class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :survey_id
      t.text :text
      t.string :description
      t.string :question_type

      t.timestamps null: false
    end
  end
end
