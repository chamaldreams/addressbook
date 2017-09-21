class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :home_add
      t.string :office_add
      t.string :delivery_add

      t.timestamps
    end
  end
end
