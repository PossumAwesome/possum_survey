class MakeRequiredQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :answer_required, :boolean
  end
end
