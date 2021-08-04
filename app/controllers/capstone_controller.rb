class CapstoneController < ApplicationController
  def index
    render json: Capstone.all
  end

  def create
    capstone = Capstone.new (
      student_id
    )
  end
end
