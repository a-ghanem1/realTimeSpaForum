# Real time sigle page forum app

## using Laravel, Pusher, VueJs, Vuetify, JWT.

1. rename ``` .env.example ``` to ``` .env ```.
2. on the env file BROADCAST_DRIVER=pusher
3. ``` composer install ```.
4. ``` npm install ```.
5. php artisan key:generate.
6. php artisan jwt:secret
7. Add the SQL file to your DB.
8. Edit your DB settings in .env file.
9. ``` php artisan migrate:fresh --seed ```.
10. ``` php artisan serve ```.
11. To Admin login: ** Email: "super@admin.com" ** , ** Password: "secret" ** .