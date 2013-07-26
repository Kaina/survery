class CreateSurveys < ActiveRecord::Migration
  def change
     create_table :surveys do |t|
      t.string :surveyname
      t.interger :user_id
 
      t.timestamps
    end
  end
end
