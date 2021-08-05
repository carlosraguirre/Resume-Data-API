class StudentsController < ApplicationController
  def index
    students = Student.all
    render json: students
  end

  def create
    student = Student.new(
      first_name: params[:name],
      last_name: params[:last_name],
      email: params[:email],
      password_digest: params[:password_digest],
      phone_number: params[:phone_number],
      short_bio: params[:linkedin_url],
      linkedin_url: params[:linkedin_url],
      twitter_handle: params[:twitter_handle],
      website_url: params[:website_url],
      online_resume_url: params[:online_resume_url],
      github_url: params[:github_url],
      photo: params[:photo]
    )

    if student.save
      render json: student
    else
      render json: {error: student.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    student = Student.find_by(id: params[:id])

    student.first_name = params[:first_name] || student.first_name
    student.last_name = params[:last_name] || student.last_name
    student.email = params[:email] || student.email
    student.password_digest = params[:password_digest] || student.password_digest
    student.phone_number = params[:phone_number] || student.phone_number
    student.short_bio = params[:linkedin_url] || student.short_bio
    student.linkedin_url = params[:linkedin_url] || student.linkedin_url
    student.twitter_handle = params[:twitter_handle] || student.twitter_handle
    student.website_url = params[:website_url] || student.website_url
    student.online_resume_url = params[:online_resume_url] || student.online_resume_url
    student.github_url = params[:github_url] || student.github_url
    student.photo = params[:photo] || student.photo

    if student.save!
      render json: student
    else
      render json: {error: student.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    student = Student.find_by(id: params[:id])
    student.destroy
    render json: {message: 'student has been removed from your database'}
  end

  def show
    student = Student.find_by(id: params[:id])
    render json: {student: student, capstone: student.capstones, education: student.educations, experience: student.experiences, skills: student.skills}
  end

end
