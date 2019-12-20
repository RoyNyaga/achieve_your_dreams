ActiveAdmin.register Message do
  permit_params :name, :email, :phone_number, :message  
end
