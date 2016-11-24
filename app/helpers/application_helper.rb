module ApplicationHelper
	  def current_product?(product)
    current_product.id == product.id
  end
end
