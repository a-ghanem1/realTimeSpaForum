# Real time sigle page forum app

## using Laravel, Pusher, VueJs, Vuetify, JWT.

1. rename ``` .env.example ``` to ``` .env ```.
2. on the env file BROADCAST_DRIVER=pusher
3. ``` composer install ```.
4. php artisan key:generate.
5. php artisan jwt:secret
6. Add the SQL file to your DB.
7. Edit your DB settings in .env file.
8. ``` php artisan migrate:fresh --seed ```.
9. ``` php artisan serve ```.
10. To Admin login: ** Email: "super@admin.com" ** , ** Password: "secret" **  

