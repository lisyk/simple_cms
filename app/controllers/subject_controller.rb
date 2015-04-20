class SubjectController < ApplicationController
  
    layout 'admin'
    
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
          flash[:notice] = "Subject created successfully"
          redirect_to(:action => 'index')
      else
      #If save fails, redisplay the form so user can fix problems
          render('new')
      end
  end

  def edit
      @subject=Subject.find(params[:id])
  end
    
  def update
      #instantiate a new object using form parameters
      @subject = Subject.find(params[:id])
      #update the object
      if @subject.update_attributes(subject_params)
      #If update succeds, redirect to the index action
          flash[:notice] = "Subject updated successfully"
          redirect_to(:action => 'show', :id => @subject.id)
      else
      #If save fails, redisplay the form so user can fix problems
          render('edit')
      end
  end

  def delete
      @subject=Subject.find(params[:id])
      
  end
      
  def destroy
      subject=Subject.find(params[:id]).destroy
      flash[:notice] = "Subject '#{subject.name}' deleted successfully"
      redirect_to(:action => 'index')
  end
    
  private
    
    def subject_params
        params.require(:subject).permit(:name, :position, :visible)
    end
end
