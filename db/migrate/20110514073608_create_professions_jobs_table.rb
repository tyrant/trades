class CreateProfessionsJobsTable < ActiveRecord::Migration
  def self.up
    create_table :professions_jobs, :id => false do |t|
      t.references :profession
      t.references :job
    end
  end

  def self.down
    drop_table :professions_jobs
  end
end
