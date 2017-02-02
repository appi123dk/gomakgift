class AddMailreceiveCheckToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :mailreceive_check, :boolean, default: false
  	add_column :orders, :is_ordered, :boolean, default: false
  end
end
