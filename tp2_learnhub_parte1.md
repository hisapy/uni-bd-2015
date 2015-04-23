# Trabajo Práctico # 2 - 2015 - Parte 1

## Pre-requesitos

Cumplir con los pre-requisitos indicados en el README principal del repo, y el entorno configurado con todo lo requerido en el TP #1

## Objetivos

El objetivo principal es *empezar* a desarrollar una plataforma para el seguimiento y control del contenido de las clases de Bases de Datos. En este sistema básicamente, se podrán cargar los temas desarrollados en cada una de las clases, los tópicos a los que corresponden estos temas, y la bibliografía asociada a los mismos. Asi mismo, el **Profesor** podrá realizar preguntas en cada clase, las cuales deberán ser respondidas por los **alumnos**.

Por otro lado se pretende establecer la base para una arquitectura en donde cada alumno podrá desarrollar su versión de partes del sistema global, bajo espacios de nombre accessibles mediante su nombre de usuario en el path, de forma similar a como gihub maneja las distintas cuentas de usuario. Al mismo tiempo, a través de estos namespaces y de la capacidad de tener distintos esquemas en la base de datos PostgreSQL, hacer de este sistema la estructura en donde los alumnos desarrollarán el sistema requerido por el Profesor Christian Samaniego.

Por último, dado todo el código proveído, se espera que el alumno adquiera el hábito de lectura de código indispensable para hacer contribuciones tanto en el ámbitos open source como no open source.

## Descripción e Instrucciones

En la parte 1 de este trabajo, se establecerán los mínimos requerimientos para este sistema, empezando por la creación de usuarios desde el archivo db/seeds.rb, y la creación de sus propias vistas para ver su perfil.

El código actual contiene todo lo necesario para utilizar **Bootstrap 3**. Por otro lado, se han agregado las gems relacionadas con **cucumber** y **rspec** las cuales se utilizan para la práctica de Behaviour Driven Developer (BDD). Se puede ver en el directorio features como se ha especificado el feature de Profile Page, y en spec/ los distintos tests funcionales y unitarios de algunos componentes.

1. Leer el código y navegar los commits en github para familiarisarze con el mismo.

2. Cada alumno deberá ser responsable de agregar sus datos de forma correcta, agregando sus atributos en el archivo db/seeds.rb, tal como se muestra en un ejemplo que ya está en ese archivo.

3. Posteriormente cada alumno deberá crear su propia vista de User y personalizarlo de acuerdo a su estilo, mostrando información acerca de su perfil, disponible en el modelo User. Utilizar markup de Bootstrap para estilizar la vista.

4. El alumno finalmente deberá testear su página de perfil, agregando sus datos en el archivo features/user_profile_page.feature en la sección o tabla de *Examples*.


**Observación**: Hay ejemplos de carga de User en db/seeds.rb, y una vista de ejemplo en views/users/hisa/show.html.erb.


### Tiempo necesario estimado 

Debido a todo el código proveído y la extensa documentación existente en el mismo e Internet se estima un tiempo máximo de 4 horas.

## Fecha y Forma de entrega

Se recibirán pull requests con los cambios de cada uno hasta el Lunes 27 de Abril de 2015 a las 23:59 PYT
