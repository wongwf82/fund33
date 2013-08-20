class CreateApplicants < ActiveRecord::Migration
  def change
    create_table :applicants do |t|
      t.string :resume

      t.timestamps
    end
  end
end
