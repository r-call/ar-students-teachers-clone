class AddTeachersToStudents < ActiveRecord::Migration

  def change

    add_column :students, :teacher_id, :integer
    add_index :students, :teacher_id
    #combines two lines above
    # add_reference :students, :teacher, :integer, index: true
  end

end