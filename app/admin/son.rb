ActiveAdmin.register Son do
  permit_params :first_name, :last_name, :ordination_date, :address, :street_number, :route,
  :postal_code, :locality, :administrative_area_level_1, :country, :bio


  index do
    selectable_column
    column :id
    column :first_name
    column :last_name
    column :email
    column :ordination_date
    column :address
    column :bio
    column "# de parrainages", :number_of_sponsorships, sortable: :number_of_sponsorships
    actions
  end

  form do |f|
    f.inputs "Fils du Cœur Immaculé" do
      f.input :first_name
      f.input :last_name
      f.input :ordination_date
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
