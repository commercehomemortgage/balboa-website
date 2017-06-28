ActiveAdmin.register Quote do
  actions :index, :show
  
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

  filter :type
  filter :name_of_insured
  filter :first_name
  filter :last_name
  filter :email
  filter :phone

  show do |quote|
    attributes_table do
      row :details do
        render partial: 'show', locals: { quote: quote }
      end
    end
  end

  index do
    column :type
    column :date do |quote|
      quote.pretty_date
    end
    column :name do |quote|
      quote.name
    end
    column :email
    column :phone
    actions
  end
end