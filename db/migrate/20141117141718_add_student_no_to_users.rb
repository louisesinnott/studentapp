class AddStudentNoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :student_no, :string
    add_index :users, :student_no, unique: true
  end
end
