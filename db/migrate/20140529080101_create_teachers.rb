require_relative '../../config'

# This is where you should use an ActiveRecord migration to
# HINT: checkout ActiveRecord::Migration.create_table

class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
    end
  end
end
