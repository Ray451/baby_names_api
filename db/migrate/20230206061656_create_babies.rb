class CreateBabies < ActiveRecord::Migration[7.0]
  def change
    create_table :babies do |t|
      t.string :name

      t.timestamps
    end
  end
end
