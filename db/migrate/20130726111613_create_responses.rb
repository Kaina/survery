class CreateResponses < ActiveRecord::Migration
  def change
      create_table :questions do |t|
      t.string :response_string
      t.integer :response_integer
      t.boolean :response_boolean
      t.integer :survey_id
      t.integer :choice_id
      t.integer :user_id
 
      t.timestamps
    end
  end
end
