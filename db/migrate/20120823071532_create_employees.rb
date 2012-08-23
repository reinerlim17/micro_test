class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :address
      t.string :contact_number
      t.integer :age
      t.string :email
      t.string :birthday

      t.timestamps
    end
  end
end
