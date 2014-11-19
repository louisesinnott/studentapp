class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :description
      t.integer :ca_percent
      t.integer :final_exam_percent

      t.timestamps
    end
  end
end
