class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :surname
      t.string :description
      t.string :email
      t.string :www
      t.string :phone
      t.string :adress
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
