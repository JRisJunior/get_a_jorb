class AddColToJobs < ActiveRecord::Migration[7.0]
  def change
    add_column :jobs, :company_id, :integer
  end
end
