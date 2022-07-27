# laravel-docker

Clone the repo and make an empty directory named `app` in root folder, which will hold the project files.   

The nginx > service > extra_hosts has a domain name mapped to the app.   
This needs to be added in host machine's host file

`echo '127.0.0.1 laravel-docker.test' | sudo tee -a /etc/hosts`

## Follow commands in spesified order to create a new laravel app.

`docker-compose build`                                                  // build prerequisites containers   
`docker-compose run --rm _composer create-project laravel/laravel app`  // run container, executes and then destroy

`docker-compose up -d nginx`                                            // run containers in daemon mode   
`docker-compose down`                                                   // stop containers

`docker exec -it php chown -R  www-data storage`                        // set laravel permissions   
`docker exec -it php chown -R  www-data bootstrap/cache`                // set laravel permissions

`docker-compose run --rm composer install`                              // run container, executes and then destroy   
`docker exec -it php sh`                                                // ssh into container   
`docker exec -it php kill -USR2 1`                                      // reload ini config
