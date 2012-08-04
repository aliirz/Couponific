class CreateVouchers < ActiveRecord::Migration
  def change
    create_table :vouchers do |t|
      t.string :title
      t.text :description
      t.string :from_name
      t.string :to_name
      t.string :from_email
      t.string :to_email
      t.date :expires_on
      t.string :passcode

      t.timestamps
    end
  end
end
