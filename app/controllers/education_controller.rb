class EducationController < ApplicationController
  def index
    education = Education.all
    render json: education.as_json
  end

  def create
    education = Education.new(
      student_id: params[:student_id],
      start_date: params[:start_date],
      end_date: params[:end_date],
      degree: params[:degree],
      university_name: params[:university_name],
      details: params[:details],
    )
    education.save
    render json: education.as_json
  end

  def show
    education = Education.find_by(id: params[:id])
    render json: education.as_json
  end

  def update
    education = Education.find_by(id: params[:id])
    education.student_id = params[:student_id] || user.student_id
    education.start_date = params[:start_date] || user.start_date
    education.end_date = params[:end_date] || user.end_date
    education.degree = params[:degree] || user.degree
    education.university_name = params[:university_name] || user.university_name
    education.details = params[:details] || user.details
    education.save
    render json: education.as_json
  end

  def destroy
    education = Education.find_by(id: params[:id])
    education.destroy
    render json: { message: "User successfully removed." }
  end
end