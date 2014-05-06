class AddCountryNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name_country, :string
    add_column :users, :name_user, :string
    add_column :users, :estado_id, :integer
    add_column :users, :notificar_usuario, :boolean
    add_column :users, :nombre_empresa, :string
    add_column :users, :logo, :string
    add_column :users, :direccion, :string
    add_column :users, :codigo_postal, :string
    add_column :users, :name_country_procedence, :string
    add_column :users, :demanda_productos_servicios, :text
    add_column :users, :oferta_productos_servicios, :text
    add_column :users, :rango_empleados, :string
    add_column :users, :rango_ventas, :string
    add_column :users, :url, :string
    add_column :users, :facebook, :string
    add_column :users, :twitter, :string
    add_column :users, :google_plus, :string
    add_column :users, :linkedin, :string
    add_column :users, :pinteresting, :string
    add_index :users, :name_country
  end
end
