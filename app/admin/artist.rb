ActiveAdmin.register Artist do
  permit_params :name, :description, :began_at, :slug, :twitter_url, :instagram_url, :flickr_url, :tumblr_url


  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  controller do
    def find_resource
      scoped_collection.friendly.find(params[:id])
    end
  end
end
