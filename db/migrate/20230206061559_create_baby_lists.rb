class CreateBabyLists < ActiveRecord::Migration[7.0]
  def change
    create_table :baby_lists do |t|
      t.string :list_id

      t.timestamps
    end
  end
end
