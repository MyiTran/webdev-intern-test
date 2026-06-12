class StudentsController < ApplicationController
  def index
    @subjects = Subject.all

    return if params[:registration_number].blank?

    @student = Student.find_by(registration_number: params[:registration_number].strip)
  end
end
