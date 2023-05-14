## Laravel Travel Blog

This is a simple travel blog website built with Laravel.

##	Authors: 
•Raveena Rathnam Kuppala and<br>
•Kosy Stephanie Ike-Ogoke <br>

## Requirements
•	PHP 7.3 or higher <br>
•	Node 12.13.0 or higher <br>
•   Xampp

## Technologies Used
• Laravel 8.x  <br>
• Tailwind CSS :used to style webpage and make it responsive  <br>
• MySQL : Used to store task,data and user information <br>
• HTML  : Used to create the user interface. <br>
• CSS   :Used to create the user interface.<br>
• JavaScript  <br>
• College Server:Used to send contact page to emails<br>


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

Setup your mail credentials in the .env file <br>
```
MAIL_MAILER=smtp
MAIL_HOST=smtp.office365.com
MAIL_PORT=587
MAIL_USERNAME=D00251856@student.dkit.ie
MAIL_PASSWORD=F8SG8GvS@A6SdrM
MAIL_ENCRYPTION=tls
MAIL_FROM_ADDRESS=D00251856@student.dkit.ie 
MAIL_FROM_NAME="${APP_NAME}"

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
•Users can view a list of blog posts, as well as view individual blog posts. <br>
•Users can leave comments on individual blog posts. <br>
•Administrators can create, edit, and delete blog posts, as well as moderate comments. <br>
•User authentication: Allow users to sign up, log in, and log out of the blog website.<br>
•User roles and permissions: Assign roles and permissions to users to control access to certain features and content.<br>
•Search: Implement a search feature to allow users to search for specific blog posts.<br>
•Responsive design: Used Tailwind CSS to create a responsive design that looks great on any device.<br>
•Image uploads: Allow users to upload images to use in their blog posts.<br>
•Error handling: Handle errors gracefully to prevent crashes and provide users with helpful error messages while trying to contact the owners of the blog.<br>
## Project Status
• Completed but has room for more changes

##  Contributing
Do not hesitate to contribute to the project by adapting or adding features ! Bug reports or pull requests are welcome.
For major changes, please open an issue first to discuss what you would like to change.
Please make sure to update tests as appropriate.
If you have been given permission to make changes:<br>

•Fork this repository.<br>
•Create a new branch for your changes<br>
•Make your changes and commit them<br>
•Push your changes to your fork<br>
•Create a pull request<br>


## License
This project is licensed under the MIT License. See the LICENSE file for more information.
