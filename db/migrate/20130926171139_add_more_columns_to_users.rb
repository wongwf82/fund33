class AddMoreColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :company_name, :string
    add_column :users, :website_url, :string
  end
end
