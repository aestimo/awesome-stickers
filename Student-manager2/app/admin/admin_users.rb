ActiveAdmin.register AdminUser do
  menu :parent => "Advanced"
  menu :if => proc{ can?(:manage, AdminUser ) }
  controller.authorize_resource

  config.per_page = 10


  filter :email
  #index :title => "Users"

  index do
    column :email
    column :last_sign_in_at
    column :sign_in_count
    column :role

    default_actions
  end

  form do |f|
    f.inputs "Enter details" do
      f.input :email
      f.input :role,:as=> :select, :collection => %w[super_admin content_editor manager trainer]
    end
    f.buttons
  end
  
end
