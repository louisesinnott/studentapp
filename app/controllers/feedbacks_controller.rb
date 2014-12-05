class FeedbacksController < ApplicationController
	before_filter :signed_in_user, only: [:new, :create, :destroy, :show]
  
  

      def new
        @feedback = Feedback.new
        
      end 


      def create
        secure_post = params.require(:feedback).permit(:subject_name, :strengths, :weaknesses, :recommendations, :rating)
        @feedback = current_user.feedbacks.build(secure_post) 
        if @feedback.save
          flash[:success] = "Feedback created!"
          redirect_to root_url
        else
          render 'static_pages/home'
        end
      end

      

      def destroy
      end

      def show
        @feedback = current_user.feedbacks    # NEW LINE
      end

      def index
       @feedbacks = Feedback.search(params[:search])
      end

      
    end