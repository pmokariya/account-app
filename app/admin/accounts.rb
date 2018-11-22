ActiveAdmin.register Account do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  permit_params :title,:account_type,:is_approve

  index do
    selectable_column
    id_column
    column :title
    column :account_type
    column :is_approve
    actions
  end

  filter :title
  filter :account_type
  filter :is_approve

  form do |f|
    f.inputs do
      f.input :title
      f.input :account_type
      f.input :is_approve
      f.input :user_id, collection: proc { User.all }
    end
    f.actions
  end


end
