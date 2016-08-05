class Api::SubjectsController < ApplicationController

  def index
    @subjects = Subject.all
    render "api/subjects/index"
  end

  def create
    @subject = Subject.new(subject_params)
    @subject.author_id = current_user.id
    if @subject.save
      render "api/subjects/show"
    else
      render json: @subject.errors.full_messages, status: 422
    end
  end

  def update
    @subject = Subject.find(params[:id])
    if @subject.update_attributes(subject_params)
      render "api/subjects/show"
    else
      render json: @subject.errors.full_message, status: 422
    end
  end

  def show
    @subject = Subject.find(params[:id])
    render "api/subjects/show"
  end

  def destroy
    @subject = Subject.find(params[:id])
    @subject.destroy!
    render "api/subjects/show"
  end

  private
  def subject_params
    params.require(:subject).permit(:title)
  end

end
