def feedbacks
  @feedbacks ||= find_feedbacks
end

private

def find_feedbakcs
  Feedback.find(:all, :conditions => conditions)
end

def keyword_conditions
  ["feedbacks.subject_name LIKE ?", "%#{keywords}%"] unless keywords.blank?
end

