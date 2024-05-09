# Laravel Dockerized

## Laravel Dockerized

This project provides a Dockerized environment for Laravel applications.

### Usage

1. **Clone the Repository**: Clone this repository to your local machine.

   ```bash
   git clone https://github.com/HaiPigGi/LaraDock-BasicAuth.git
   ```

2. **Setup Environment**: Use the provided Makefile to setup the environment.

   ```bash
   make setup
   ```

3. **Login to PHP Container**: Use the following command to login to the PHP container.

   ```bash
   make login
   ```

   Once logged in, you can run various commands such as composer updates, migrations, etc., directly within the container.

### Make Commands

- `make setup`: Builds and sets up the Docker environment.
- `make build`: Builds Docker images with no cache and removes intermediate containers.
- `make stop`: Stops Docker containers.
- `make up`: Starts Docker containers.
- `make composer-update`: Runs `composer update` command within the PHP container.
- `make migrate`: Runs Laravel migrations within the PHP container.
- `make rollback`: Rolls back Laravel migrations within the PHP container.
- `make login`: Logs into the PHP container.

### Contribution

Contributions are welcome! If you encounter any issues or want to contribute with fixes or new features, feel free to open an issue or pull request in our GitHub repository.

### License

This project is licensed under the [MIT License](LICENSE).

Thank you for using Laravel Dockerized! 🚀
