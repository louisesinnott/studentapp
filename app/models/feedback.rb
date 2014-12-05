class Feedback < ActiveRecord::Base
	belongs_to :users #association with user
	belongs_to :subjects
	
	validates :user_id, presence:true
	validates :subject_name, presence:true
	
	def self.search(search)
		if search
			find(:all, :conditions => ['subject_name LIKE ?', "%#{search}%"])
    else
      find(:all)
   end
end
end
