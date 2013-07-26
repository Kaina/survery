class CreateResponses < ActiveRecord::Migration
  def change
      create_table :questions do |t|
      t.string :response_string
      t.integer :survey_id
 
      t.timestamps
    end
  end
end
