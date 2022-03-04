class CreateProposals < ActiveRecord::Migration[5.2]
  def change
    create_table :proposals do |t|
      t.string :name
      t.text :description
      t.date :start_date
      t.date :end_date
      t.float :value

      t.timestamps
    end
  end
end
