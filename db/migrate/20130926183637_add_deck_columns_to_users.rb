class AddDeckColumnsToUsers < ActiveRecord::Migration
  def change
    add_attachment :users, :deck
  end
end
