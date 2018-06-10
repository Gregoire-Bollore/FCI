ActiveAdmin.register Family do
  permit_params :last_name, :first_names_and_ages, :address, :street_number, :route,
  :postal_code, :locality, :administrative_area_level_1, :country, :bio

  index do
    selectable_column
    column :id
    column :last_name
    column :email
    column :address
    column :bio
    column "# de parrainages", :number_of_sponsorships, sortable: :number_of_sponsorships
    column :created_at
    column :admin
    actions
  end

  form do |f|
    f.inputs "Famille du Cœur Immaculé" do
      f.input :last_name
      f.input :first_names_and_ages
      f.input :bio
    end
    # f.inputs "Adresse" do
    #   f.input :address
    #   f.input :street_number
    #   f.input :route
    #   f.input :postal_code
    #   f.input :locality
    #   f.input :administrative_area_level_1
    #   f.input :country
    # end
  end
end
