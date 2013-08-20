class AddColumnsToApplicants < ActiveRecord::Migration
  def change
    add_column :applicants, :first_name, :string
    add_column :applicants, :last_name, :string
    add_column :applicants, :city, :string
    add_column :applicants, :country, :string
    add_column :applicants, :phone, :string
    add_column :applicants, :email, :string
  end
end
