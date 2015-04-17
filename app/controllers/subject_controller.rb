class SubjectController < ApplicationController
  
    layout false
    
  def index
      @subjects=Subject.sorted #sorted was defined before in model/subject/scope
  end

  def show
  end

  def new
  end

  def edit
  end

  def delete
  end
end
