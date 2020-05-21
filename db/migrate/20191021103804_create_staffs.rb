class CreateStaffs < ActiveRecord::Migration[5.2]
  def change
    create_table :staffs do |t|
      t.string :name
      t.float :hour_worked
      t.decimal :pay_rate
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
