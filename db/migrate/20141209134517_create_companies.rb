class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :description
      t.string :email
      t.string :www
      t.string :phone
      t.string :address
      t.string :city
      t.string :postcode
      t.string :country

      t.timestamps
    end
  end
end
