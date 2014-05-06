class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

protected

 def configure_permitted_parameters
   devise_parameter_sanitizer.for(:sign_up) << :name_country
   devise_parameter_sanitizer.for(:account_update) << :name_country

   devise_parameter_sanitizer.for(:sign_up) << :name_user
   devise_parameter_sanitizer.for(:account_update) << :name_user

   devise_parameter_sanitizer.for(:sign_up) << :estado_id
   devise_parameter_sanitizer.for(:account_update) << :estado_id

   devise_parameter_sanitizer.for(:sign_up) << :notificar_usuario
   devise_parameter_sanitizer.for(:account_update) << :notificar_usuario

   devise_parameter_sanitizer.for(:sign_up) << :nombre_empresa
   devise_parameter_sanitizer.for(:account_update) << :nombre_empresa

   devise_parameter_sanitizer.for(:sign_up) << :logo
   devise_parameter_sanitizer.for(:account_update) << :logo

   devise_parameter_sanitizer.for(:sign_up) << :direccion
   devise_parameter_sanitizer.for(:account_update) << :direccion

   devise_parameter_sanitizer.for(:sign_up) << :codigo_postal
   devise_parameter_sanitizer.for(:account_update) << :codigo_postal

   devise_parameter_sanitizer.for(:sign_up) << :name_country_procedence
   devise_parameter_sanitizer.for(:account_update) << :name_country_procedence

	 devise_parameter_sanitizer.for(:sign_up) << :demanda_productos_servicios
   devise_parameter_sanitizer.for(:account_update) << :demanda_productos_servicios

	 devise_parameter_sanitizer.for(:sign_up) << :oferta_productos_servicios
   devise_parameter_sanitizer.for(:account_update) << :oferta_productos_servicios

	 devise_parameter_sanitizer.for(:sign_up) << :rango_empleados
   devise_parameter_sanitizer.for(:account_update) << :rango_empleados

	 devise_parameter_sanitizer.for(:sign_up) << :rango_ventas
   devise_parameter_sanitizer.for(:account_update) << :rango_ventas

	 devise_parameter_sanitizer.for(:sign_up) << :url
   devise_parameter_sanitizer.for(:account_update) << :url

	 devise_parameter_sanitizer.for(:sign_up) << :facebook
   devise_parameter_sanitizer.for(:account_update) << :facebook

	 devise_parameter_sanitizer.for(:sign_up) << :twitter
   devise_parameter_sanitizer.for(:account_update) << :twitter

	 devise_parameter_sanitizer.for(:sign_up) << :google_plus
   devise_parameter_sanitizer.for(:account_update) << :google_plus

	 devise_parameter_sanitizer.for(:sign_up) << :linkedin
   devise_parameter_sanitizer.for(:account_update) << :linkedin

	 devise_parameter_sanitizer.for(:sign_up) << :pinteresting
   devise_parameter_sanitizer.for(:account_update) << :pinteresting

	end
end

