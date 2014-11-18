class StaticPagesController < ApplicationController
  def home
  	@feedback = current_user.feedbacks.build if signed_in?
  end

  def help
  end

  def about
  end
end
