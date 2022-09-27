class StudentsController < ApplicationController
    def index
        students = Student.all 
        render json:students
    end

    def grades
        students_grades = Student.order(grade: :desc)
        render json:students_grades
    end
end
