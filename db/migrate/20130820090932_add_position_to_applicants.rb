class AddPositionToApplicants < ActiveRecord::Migration
  def change
    add_column :applicants, :position, :string
  end
end
