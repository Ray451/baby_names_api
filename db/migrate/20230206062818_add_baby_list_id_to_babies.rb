class AddBabyListIdToBabies < ActiveRecord::Migration[7.0]
  def change
    add_column :babies, :baby_list_id, :string
  end
end
