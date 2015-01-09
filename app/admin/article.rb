ActiveAdmin.register Article do


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
  permit_params :user_id, :name, :tag, :content, :content2, :description, :cta_button, :background, :thumbnail, :header, :body1

  form html: {multipart: true} do |f|
    f.inputs "Article" do
      f.input :user_id, label: "User", as: :select, collection: User.all.map { |u| [u.full_name, u.id] }
      f.input :name
      f.input :tag, as: :select, collection: ["design", "social", "events", "business", "web"]
      f.input :content
      f.input :content2
      f.input :description
      f.input :cta_button
    end
    f.inputs "Images" do
      f.input :background, required: false
      f.input :thumbnail, required: false
      f.input :header, required: false
      f.input :body1, required: false
    end
    f.actions
  end
end
