class ReportsController < ApplicationController
  def index
    @subjects = Subject.all
    @report_data = build_report_data
    @top_students = top_group_a_students
  end

  private

  def build_report_data
    @subjects.to_h do |subject|
      key = subject.key

      [
        subject,
        {
          excellent: Student.where("#{key} >= ?", 8).count,
          good: Student.where("#{key} >= ? AND #{key} < ?", 6, 8).count,
          average: Student.where("#{key} >= ? AND #{key} < ?", 4, 6).count,
          poor: Student.where("#{key} < ?", 4).count
        }
      ]
    end
  end

  def top_group_a_students
  Student
    .where.not(math: nil)
    .where.not(physics: nil)
    .where.not(chemistry: nil)
    .order(Arel.sql("(math + physics + chemistry) DESC"))
    .limit(10)
  end
end
