class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :full_name
      t.text :bio
      t.integer :age
      t.string :title

      t.timestamps
    end
  end
end
