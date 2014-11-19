class CreateCourseSubjectJoinTable < ActiveRecord::Migration
  def change
  	create_table :course_subjects, :id => false do |t|
          t.string :course_id
          t.string :subject_id
  end
end
end

    