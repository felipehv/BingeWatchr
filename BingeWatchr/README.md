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
* Si la noticia le pertenece, podrá editarla haciendo click en el botón de editar.
 
### Crear noticias ###
 
* Repo owner or admin
* Other community or team contact
 
### Ver series ###
* 
* 
