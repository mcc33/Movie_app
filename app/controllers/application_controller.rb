class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  Enceladus.connect("58f45bf23250960a8d2a2d767d2b9d2e", { include_image_language: "pt", language: "en,null", include_adult: true })
  $base_url = "http://image.tmdb.org/t/p/w370"



end
