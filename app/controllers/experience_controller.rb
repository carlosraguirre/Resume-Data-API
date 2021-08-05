class ExperienceController < ApplicationController
  def index
    experience = Experience.all
  render json: experience.as_json
  end

  def create
    experience = Experience.new(
      student_id: params[:student_id],
      start_date: params[:start_date],
      end_date: params[:end_date],
      job_title: params[:job_title],
      company_name: params[:company_name],
      details: params[:details],
    )
    experience.save
    render json: experience.as_json
  end

  def show
    experience = Experience.find_by(id:
    params[:id])
    render json: experience.as_json
    end

  def update
    experience = Experience.find_by(id:
    params[:id])
    experience.student_id = params[:student_id] || user.student_id
    experience.start_date = params[:start_date] || user.start_date
    experience.end_date = params[:end_date] || user.end_date
    experience.job_title = params[:job_title] || user.job_title
    experience.company_name = params[:company_name] || user.company_name
    experience.details = params[:details] || user.details
    experience.save
    render json: experience.as_json
    end 

  def destroy
    experience = Experience.find_by(id: params[:id])
    experience.destroy
    render json: {message: "Experience successfully deleted"}
  end
end
