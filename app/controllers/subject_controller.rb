class SubjectController < ApplicationController
  
    layout false
    
  def index
      @subjects=Subject.sorted #sorted was defined before in model/subject/scope
  end

  def show
      @subject=Subject.find(params[:id])
  end

  def new

  end
    
  def create
      #instantiate a new object using form parameters
      @subject = Subject.new(subject_params)
      #Save the object
      if @subject.save
      #If save succeds, redirect to the index action
          redirect_to(:action => 'index')
      else
      #If save fails, redisplay the form so user can fix problems
          render('new')
      end
  end

  def edit
  end

  def delete
  end
    
  private
    
    def subject_params
        params.require(:subject).permit(:name, :position, :visible)
    end
end
