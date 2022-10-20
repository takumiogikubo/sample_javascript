class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :company_name
      t.integer :document_pass, default: "0"
      t.integer :interview_pass, default: "0"
      t.integer :unofficial_offer, default: "0"
      t.timestamps
    end
  end
end
