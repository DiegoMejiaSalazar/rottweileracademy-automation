# Rottweailer academy
## Que es rottweiler academy?

Es un sistema que se enfoca en la educacion de los estudiantes esto lo hace mediante la venta, oferta y regalos de
material educativo el cual son video tutoriales los cuales pueden ser de pago o gratis, una vez que el estudiante tiene
acceso a un curso lo que puede hacer es apuntarse y posteriormente completar un curso, y esto es solo posible si es que
el estudiante termino de ver todos los videos

## Estructura del proyecto

El proyecto se divide en dos partes:
 * Features: El cual contiene todos los archivos .feature el cual esta escrito en gherkins
 * step_definitions: El cual contiene la definicion de los pasos .feature

## Que flujos se testearon
 * Access using an existing account and using correct credentials
 * Access using an existing account and using incorrect credentials
 * Access using an unexisting account
 * Access to a course
 * Sign up for a course
 * Complete a course
 * Filter course given a logged in student
 * Filter course given an anonymus user
 * Find a course by word
 * Find an event using an specific date
 * Find all passed events
 * Logout given a user that logged in
 * Add course to shopping cart
 * Add two times the same course to the shopping cart
 * Get the total amount of the coures added to the cart
 * Remove element from the shopping cart

## Como hacer correr el proyecto

> cucumber features --format html --out reports