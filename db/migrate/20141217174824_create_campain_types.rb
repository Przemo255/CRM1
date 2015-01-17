class CreateCampainTypes < ActiveRecord::Migration
  def change
    create_table :campain_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
