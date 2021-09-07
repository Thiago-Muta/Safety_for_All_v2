class AddSendPhoneToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :send_to_phone, :string
  end
end
