class AddIsApproveToAccount < ActiveRecord::Migration[5.2]
  def change
    add_column :accounts, :is_approve, :boolean, default: :false
  end
end
