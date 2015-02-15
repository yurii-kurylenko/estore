class PagesController < ApplicationController

  def home
    @products = Shoppe::Product.active.featured.includes(:default_image, :product_category, :variants).root
      .includes(:default_image, :product_category)
      .in_groups(4, false)
    @categories = Shoppe::ProductCategory.ordered.in_groups(4, false)
  end

end

