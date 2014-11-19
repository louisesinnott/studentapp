class Subject < ActiveRecord::Base
has_many :feedback #association with feedback
has_many :courses


	validates :subject_name, presence:true
	validates :description, presence:true

end

