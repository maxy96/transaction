# Instalacion
* Clonar el respositorio
* Posicionarte en la carpeta del proyecto
* Ejectutar `bundle install`
* Renombrar el archivo .env.example a .env 
    * Abrir el archivo y agregar el token de la autorizacion puesta en la consigna
* Ejecutar Rake db:setup
* Ejecutar Rake db:migrate
* Ejecutar rails s
* Abrir la ruta /api/v1/generate_transactions
    * Esto sirve para cargar datos de la transaccion que se almacenara en la base de datos

