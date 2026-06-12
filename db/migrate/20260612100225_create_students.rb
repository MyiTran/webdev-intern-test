class CreateStudents < ActiveRecord::Migration[7.2]
  def change
    create_table :students do |t|
      t.string :registration_number
      t.float :math
      t.float :literature
      t.float :foreign_language
      t.float :physics
      t.float :chemistry
      t.float :biology
      t.float :history
      t.float :geography
      t.float :civic_education
      t.string :foreign_language_code

      t.timestamps
    end
    add_index :students, :registration_number
  end
end
