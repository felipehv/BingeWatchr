# README #
 
En este README se podrán ver las instrucciones para la instalación, ejecución y funcionamiento de la aplicación BingeWatchr.
 
### Requisitos de instalación ###
 
* Version de Rails: 5.0.1
* Ruby > 2.4
 
### Instalacion ###
* Clonar el repositorio desde la rama Master
```bash
cd Bingewatchr
```
* Efectuar los comandos 
 
```bash
bundle install
rails db:create
rails db:migrate
rails db:seed
rails s
```
* En caso de falla en ```bundle install```, correr ```bundle update```
* Con esto el servidor estará corriendo el puerto 3000 de localhost
* Entrar en ```http://localhost:3000```
 
### Creación de usuario y login ###
 
* Al entrar en la pagina principal se verán algunas noticias y un menú que lleva a series.
* Click en Login
* En esta vista podrás elegir si iniciar sesión normal con tu usuario o iniciar sesión con tu cuenta de Facebook
* En caso de no tener un usuario, puedes iniciar directamente con facebook o crear uno nuevo en Crear usuario.
 
### Ver noticias ###
 
* En el home aparecen las noticias más recientes
* Para ver más información hacer click en [Insertar nombre boton]
 
 
### Ver series ###
* Para ver las series disponibles, clickear en la barra de menú en Series
* En esta vista verá todas las series disponibles públicas y las series creadas por el usuario o la cuenta que es padre de ella.
* Para ver más información hacer click en la imágen sobre el nombre de la serie.
 
### Buscar series con filtros ###
* En la misma vista donde se muestran todas las series hay una barra larga donde se pueden ingresar palabras claves para buscar series. Además hay un selector para buscar por tipo de serie.
 
### Crear series ###
* Para crear series, hacer click en el botón New Series en la página de vistas de series.
* Una vez ahí deberá ingresar el nombre, el año de creación y seleccionar un tipo para luego hacer click en create serie.
 
### Dentro de la vista una serie el particular ###
* Aqui se verá información detallada de la serie.
* Puedes marcar como favorita la serie si apretas en el botón que dice No es Favorito.
Este cambiara a Es favorito una vez que se presione. Para revertirlo, apretar el botón nuevamente.
* Para ver los capitulos de la serie, hacer click en Ver Capitulos (más adelante se explica en detalle)
* Para editar una serie y cambiar su información, hacer click en Editar Serie.
* Si desea eliminar una serie, hacer click en Eliminar serie.
* En la sección de comentarios podrá escribir comentarios en la barra de texto y además ver todos los comentarios de otros usuarios en la aplicación.
* Al lado derecho aparecerá una vista de Spotify con el soundtrack de la serie.
 
### En la vista de capitulos ###
* Aparecerán listados todos los capítulos de una serie.
* Puedes agregar uno nuevo haciendo click en New Episode y llenando los campos pedidos en la página.
* Para saber más sobre un capítulo hacer click en Learn More.
 
### Favoritos ###
*  Para ver todas las series marcadas como favoritas, hacer click arriba en el menú en la opción favorites.  Ahí podrás ver la lista detodas la series favoritas, y al hacer click sobre ellas podrás ir a toda la información. Además se puede eliminar desde ahí.
 
### Watch later ###
* Al hacer click en el menú en la opción watch later, podrás ver todos los capítulos marcados para ver más tarde.
 
### Estadísticas ###
*  Para saber sobre la popularidad de las series y capítulos, hacer click en statistics en el menú superior.
 
### Configuración ###
* En la opción de configuración podrás ver todas las cuentas asociadas, crear cuentas asociadas en el formulario de creación, modificar los datos de lacuenta haciendo click en Editar Cuenta.
* Si eres administrador, podrás ver todos los usuario del sistema, editarlos y eliminarlos.
* Finalmente si eres administrador, podrás crear otros usuarios administradores.
 
### Logout ###
* Estando en la vista de configuración habrá un boton para hacer logout así cerrar sesíon en la aplicación.
