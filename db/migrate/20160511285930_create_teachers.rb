class CreateTeachers < ActiveRecord::Migration

  def create
    create_table :teachers do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :phone
    end 
  end

end