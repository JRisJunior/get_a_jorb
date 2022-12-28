class CreateJobPostTags < ActiveRecord::Migration[7.0]
  def change
    create_table :job_post_tags do |t|
      t.integer :job_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
