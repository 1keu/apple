class HomeController < ApplicationController
 def top
    # if~else文を貼り付けてください
    if product_signed_in?
      @note = Note.new
      @notes = Note.all.order(created_at: :desc)
    else
      @message = "KiMeRoNへようこそ！"
    end
  end
end
