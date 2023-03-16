class CreateSubjects < ActiveRecord::Migration[7.0]
  def change
    create_table :subjects do |t|
      t.text :SubjectName
      t.text :Evaluation
      t.belongs_to :student, null: false, foreign_key: true

    end
  end
end
