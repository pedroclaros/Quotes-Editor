# README

Consideraciones:

* Ruby version: ruby 3.0.3p157

* Rails version: Rails 7.0.3.1

* Configuración: correr bundle, yarn y usar redis-server para probar los trabajos en segundo plano y tiempo real.
Para que la aplicación funcione debe tener instalado previamente Redis y levantar servidor al mismo tiempo con redis-server.

* Database: PostgreSQL

* Test: rails test:system 

* Seed: rails db:seed (solo funciona con 3 usuarios, se pueden ver en el arhivo seeds usuario y contraseña) 
