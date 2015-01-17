class CreateCampains < ActiveRecord::Migration
  def change
    create_table :campains do |t|
      t.string :name
      t.string :start_data
      t.string :end_data
      t.float :expected_income
      t.float :end_income
      t.float :cost
      t.string :status
      t.string :campain_type
      t.text :campain_description
      t.references :campain_types_id, index: true

      t.timestamps
    end
  end
end
