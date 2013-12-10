class AddEmailToStudents < ActiveRecord::Migration
  def change
    add_column :students, :email, :string, unique: true
    add_index :students, :email, unique: true
  end


end
