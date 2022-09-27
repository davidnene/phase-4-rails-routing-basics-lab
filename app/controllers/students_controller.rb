class StudentsController < ApplicationController
    def index
        students = Student.all 
        render json:students
    end

    def grades
        students_grades = Student.order(grade: :desc)
        render json:students_grades
    end

    def highest_grade
        students_highest_grade = Student.order(grade: :desc).first
        render json:students_highest_grade
    end

end
