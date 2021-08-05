class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :username
      t.integer :age
      t.string :email
      t.string :password_digest
      t.text :bio

      t.timestamps
    end
  end
end
