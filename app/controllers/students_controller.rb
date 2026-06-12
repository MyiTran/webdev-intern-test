class StudentsController < ApplicationController
  def index
    @student = Student.find_by(registration_number: params[:registration_number]) if params[:registration_number].present?
    @subjects = Subject.all
  end
end
