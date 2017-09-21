class CreateContactNumbers < ActiveRecord::Migration[5.1]
  def change
    create_table :contact_numbers do |t|
      t.string :office_c
      t.string :home_c
      t.string :private_c

      t.timestamps
    end
  end
end
