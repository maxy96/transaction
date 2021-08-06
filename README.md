# Instalacion
* Clonar el respositorio
* Posicionarte en la carpeta del proyecto
* Ejectutar `bundle install`
* Renombrar el archivo `.env.example` por `.env` 
    * Abrir el archivo y agregar el token de la autorizacion en INCREASE_TOKEN
* Ejecutar `rake db:setup`
* Ejecutar `rake db:migrate`
* Ejecutar `rails s`
* Abrir la ruta /api/v1/generate_transactions
    * Esto sirve para cargar datos de la transaccion que se almacenara en la base de datos

