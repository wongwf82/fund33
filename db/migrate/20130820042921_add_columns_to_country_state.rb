class AddColumnsToCountryState < ActiveRecord::Migration
  def change
    add_column :countries, :iso, :string
    add_column :countries, :name, :string

    add_column :states, :iso, :string
    add_column :states, :name, :string
  end
end
