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
    column "# de parrainages", :number_of_sponsorships, sortable: :number_of_sponsorships
    column :address
    column :bio
    actions
  end
end
