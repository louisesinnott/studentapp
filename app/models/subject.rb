class Subject < ActiveRecord::Base
has_many :feedbacks #association with feedback
has_and_belongs_to_many :courses


	validates :subject_name, presence:true
	validates :description, presence:true

end

