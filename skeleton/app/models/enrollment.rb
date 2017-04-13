class Enrollment < ActiveRecord::Base

  belongs_to :course,
    class_name: "Course",
    foreign_key: :id,
    primary_key: :course_id

  belongs_to :user,
    class_name: "User",
    foreign_key: :id,
    primary_key: :student_id
end
