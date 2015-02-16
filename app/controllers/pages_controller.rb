class PagesController < ApplicationController

  def home
    @products = Shoppe::Product.active.featured.includes(:default_image, :product_category, :variants).root
      .includes(:default_image, :product_category)
      .in_groups(4, false)
    @categories = Shoppe::ProductCategory.root.in_groups(4, false)
    @subcategories = Shoppe::ProductCategory.get_subcats.in_groups(4, false)
  end

  def subcategories
    @subcategories = Shoppe::ProductCategory.where(:permalink => params[:permalink])
      .first
      .subcats
      .in_groups(4, false)
  end

end

