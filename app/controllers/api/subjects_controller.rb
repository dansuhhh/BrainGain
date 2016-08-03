class SubjectsController < ApplicationController

  def index
    @subjects = Subject.all
  end

  def new

  end

  def create
    @subject = Subject.new(subject_params)
    if @subject.save
      render json: @subject
    else
      render json: @subject.errors.full_messages, status: 422
    end
  end

  def edit
    @subject = Subject.find(params[:id])
    render json: @subject
  end

  def update
    @subject = Subject.find(params[:id])
    if @subject.update!
      render json: @subject
    else
      render json: @subject.errors.full_message, status: 422
    end
  end

  def show
    render json: Subject.find(params[:id])
  end

  def destroy
    @subject = Subject.find(params[:id])
    if @subject.destroy!
      redirect_to api_subjects_url
    else
      render json: @subject.errors.full_message, status: 404
  end

  private
  def subject_params
    params.require(:subject).permit(:title)
  end

end
