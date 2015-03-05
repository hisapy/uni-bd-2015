## README

### Requirements

* Ruby 2.2.0 - Está especificado en los archivos _.ruby-version_ y _.ruby-gemset_

### Database

* SQLite (antes del TP #1)
* PostgreSQL (luego del TP#1, ver en la descripción en https://github.com/hisapy/uni-bd-2015/milestones)

### Deployment Instructions (development)

* Clonar el repo a sus máquinas de desarrollo.
* En la línea de comandos o consola ir al directorio **ror** (_cd ror_)
* Ejecutar bundle install (esto se tiene que ejecutar cada vez que se agrega una nueva gem en el Gemfile)
* Ejecutar el comando **bin/rake db:migrate** (esto sirve para escribir en la BD su metadata de forma independiente al DBMS suyacente. Las migraciones están en el directorio db/migrate)
* Iniciar el servidor webrick con el comando bin/rails server
