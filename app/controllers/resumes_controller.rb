class ResumesController < ApplicationController
  before_action :authenticate_user!

  def index
    @resumes = Resume.all
  end

  def show
    @resume = Resume.find(params[:id])
  end

  def edit
    @resume = Resume.find(params[:id])
  end

  def new
    @resume =  Resume.new
  end

  def create
    @resume= Resume.new(resume_params)
    @resume.user = current_user
    if @resume.save
      redirect_to resumes_path
    else
      render :new
    end
  end

  def update
    @resume=Resume.find(params[:id])
    if @resume.update(resume_params)
      redirect_to resumes_path, notice: "Update Success"
    else
      render :edit
    end
  end

  def destroy
    @resume=Resume.find(params[:id])
    @resume.destroy
    flash[:alert]= "Resume deleted"
    redirect_to resumes_path
  end

  private
  def resume_params
    params.require(:resume).permit(:content, :attachment)
  end
  end
