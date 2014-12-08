
class SubjectsController < ApplicationController
      def show
        @subject = Subject.find(params[:name])
      end
      
      def new
        @subject = Subject.new 
      end 

      # UPDATED IMPLEMENTATION
      def destroy
        @subject.destroy
        redirect_to root_url
      end

       # NEW PRIVATE METHOD
      private

        def correct_user
          @subject = current_user.subjects.find_by_id(params[:id])
          redirect_to root_url 
        end
    end

      def create
        secure_params = params.require(:subject).permit(:name, :description, :ca_percent, :final_exam_percent)
        @subject = Subject.new(secure_params)
        if @subject.save
          flash[:success] = "Subject created!"
          redirect_to root_url
        else
          render 'static_pages/home'
        end
      end
      

      def index
       @subjects = User.all
      end
