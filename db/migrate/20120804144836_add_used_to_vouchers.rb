class AddUsedToVouchers < ActiveRecord::Migration
  def change
    add_column :vouchers, :used, :boolean
  end
end
