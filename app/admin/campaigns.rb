ActiveAdmin.register Campaign do
  permit_params :title, :content, :start_date, :end_date, :photos
end
