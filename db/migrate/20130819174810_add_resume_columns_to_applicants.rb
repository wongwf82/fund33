class AddResumeColumnsToApplicants < ActiveRecord::Migration
  def change
    add_attachment :applicants, :cv
  end
end
