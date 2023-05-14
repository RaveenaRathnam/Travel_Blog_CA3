## Laravel Travel Blog

This is a simple blog website built with Laravel.

•	Authors: Raveena Rathnam Kuppala and Kosy Stephanie Ike-Ogoke <br>

## Requirements
•	PHP 7.3 or higher <br>
•	Node 12.13.0 or higher <br>

## Technologies Used
• Laravel 8.x
• Tailwind CSS
• MySQL
• HTML
• CSS
• JavaScript

## Usage/Installation<br>
Setting up your development environment on your local machine: <br>
```
git clone git@https://github.com/RaveenaRathnam/Travel_Blog_CA3
Install dependencies: composer install
Create a new .env file: cp .env.example .env
Generate an application key: php artisan key:generate
Set up your database in the .env file
Run migrations: php artisan migrate
Start the development server: php artisan serve
Usage
Once you have the development server running, you can visit the website in your browser at http://localhost:8000.
```



Setup your database credentials in the .env file <br>
```
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=travelblog
DB_USERNAME={USERNAME}
DB_PASSWORD={PASSWORD}
```

Migrate the tables
```
php artisan migrate
```

Setup your comment to use htmlspecial characters<br>
```
Install dependencies: composer require "laravelcollective/html"
Include to config\app.php at "providers" area: Collective\Html\HtmlServiceProvider::class
Include to config\app.php at "aliases" area: 'Form' => Collective\Html\FormFacade::class,
                AND
 'Html' => Collective\Html\HtmlFacade::class,
 ````
## Features
•Users can view a list of blog posts, as well as view individual blog posts.
•Users can leave comments on individual blog posts.
•Administrators can create, edit, and delete blog posts, as well as moderate comments.

##  Contributing
Do not hesitate to contribute to the project by adapting or adding features ! Bug reports or pull requests are welcome.
 For major changes, please open an issue first to discuss what you would like to change.
Please make sure to update tests as appropriate.

## License
MIT
