class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.string :user_id
      t.string :subject_name
      t.string :strengths
      t.string :weaknesses
      t.string :recommendations
      t.string :rating

      t.timestamps
    end
    add_index :feedbacks, [:user_id, :created_at]
  end
end
