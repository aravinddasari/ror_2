class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :age
      t.date :date_of_joining
      t.string :designation
      t.string :current_project
      t.string :team_lead
      t.integer :skills
     

      t.timestamps
    end
  end
end
