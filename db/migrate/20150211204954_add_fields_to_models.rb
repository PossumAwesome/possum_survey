class AddFieldsToModels < ActiveRecord::Migration
  def change
    add_column :responses, :taker_id, :integer
    add_column :options, :order_number, :integer
    add_column :questions, :order_number, :integer
    remove_column :authors, :login, :string
    add_column :authors, :email, :string
  end
end
