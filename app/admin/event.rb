ActiveAdmin.register Event do


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
  permit_params :title, :location, :venue, :date_time, :description, :ext_url

  form do |f|
    f.inputs "Event" do
      f.input :title
      f.input :location
      f.input :venue
      f.input :date_time, start_year: Time.now.year - 2, end_year: Time.now.year + 5
      f.input :description
      f.input :ext_url
    end
    f.actions
  end

end
