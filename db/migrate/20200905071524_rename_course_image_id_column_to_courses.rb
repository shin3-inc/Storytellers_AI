class RenameCourseImageIdColumnToCourses < ActiveRecord::Migration[5.2]
  def change
  	rename_column :courses, :course_image_id, :image_id
  end
end
