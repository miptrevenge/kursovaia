class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :FirstName
      t.string :LastName
      t.string :Patronymic
      t.string :Login
      t.string :Password
      t.integer :Key
      t.string :FacultyName
      t.string :GroupName
      
    end
  end
end
