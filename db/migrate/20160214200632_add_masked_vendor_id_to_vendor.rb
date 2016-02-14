class AddMaskedVendorIdToVendor < ActiveRecord::Migration
  def change
    add_column :vendors, :masked_vendor_id, :string
  end
end
