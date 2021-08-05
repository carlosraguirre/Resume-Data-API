class SkillsController < ApplicationController
  def index
    render json: Skill.all.as_json
  end

  def create
    skill = Skill.new(
      student_id: params[:student_id],
      skill_name: params[:skill_name]
    )
    if skill.save
      render json: {message: "skill created"}, status: :created
      
    else
      render json: { errors: skill.errors.full_messages }, status: :bad_request
    end
  end

  def show
    skill = Skill.find_by(id: params[:id])
    render json: skill.as_json
  end

  def update
    skill = Skill.find_by(id: params[:id])
    
    skill.student_id = params[:student_id] || skill.student_id
    skill.skill_name = params[:skill_name] || skill.skill_name

    render json: skill.as_json
  end

  def destroy
    skill = Skill.find_by(id: params[:id])

    if skill.delete
      render json: {message: "skill was deleted"}
    end
  end
end
