class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.string :category
      t.date :date_start
      t.date :data_end

      t.timestamps
    end
  end
end
