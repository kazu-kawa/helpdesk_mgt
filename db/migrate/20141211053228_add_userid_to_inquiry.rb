class AddUseridToInquiry < ActiveRecord::Migration
  def change
    add_column :inquiries, :user_id, :integer
    add_column :inquiries, :dept_id, :integer
  end
end
