class AddQuestionsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :question1, :string
    add_column :users, :question2, :string
    add_column :users, :question3, :string
    add_column :users, :question4, :string
    add_column :users, :question5, :string
    add_column :users, :question6, :string
    add_column :users, :question7, :string
    add_column :users, :question8, :string
    add_column :users, :question9, :string
    add_column :users, :question10, :string
    add_column :users, :question11, :string
  end
end
