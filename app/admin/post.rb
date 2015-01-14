ActiveAdmin.register Post do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  permit_params :title, :summary, :content, :user_id, :start_date, :end_date

  form do |f|
    f.inputs "Details" do
      f.input :title
      f.input :summary
      f.input :content
      f.input :start_date, as: :datepicker, wrapper_html: {class: 'cus-date-picker'}
      f.input :end_date, as: :datepicker, wrapper_html: {class: 'cus-date-picker'}
    end
    f.actions
  end

end
