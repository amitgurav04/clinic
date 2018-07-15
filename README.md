## Clinic app with GDPR consents

### Overview
This is Rails application for GDPR integration in clinic application. You can deploy this app on internet. 
1. User/patient can sign-up/register on clinic site. In registration form he will be asked for consents regarding uses of his personal information and contact details.

2. User/patient can edit his profile. To Edit profile:
    Sign-in to account > Account(username) Drop down > Edit Profile

3. User/patient can delete his account. To Delete account:
    Sign-in to account > Account(username) Drop down > Edit Profile > Go to bottom of form > Delete my account.
 
4. Also he can download his profile information in pdf format.

* Rails version: v4.2.6

* Ruby version: v2.3.0

* Database Used:  PostgreSQL

### Deployment:
##### On Local:
* Clone the repository
    ```
    $ git clone https://github.com/amitgurav04/clinic.git
    ```
* Change directory
    ```
    $cd clinic
    ```
* Install dependencies
    ```
    $ bundle install
    ```
* Create database
    ```
    $ rake db:create
    ```
* Migrate database schema
    ```
    $ rake db:migrate
    ```
* Seed database
    ```
    $ rake db:seed
    ```
* Start server
    ```
    $ rails s
    ```
* Open [localhost:3000](http://localhost:3000) in browser

After running successfully you can deploy the app on Heroku or any other server
Here, I am giving steps to deploy on Heroku
##### On Heroku:
Run following commands from url_shortener directory
* Login to Heroku using cli. You need to enter username and password for your Heroku account
    ```
    $ heroku login
    ```
* Create app on Heroku
    ```
    $ heroku create
    ```
* Verify that the remote was added to your project.
    ```
    $ git config --list | grep heroku
    ```
* Deploy application
    ```
    $ git push heroku master
    ```
    After successful push you can migrate database.
* Migrate database
    ```
    $ heroku run rake db:migrate
    ```
* Seed database
    ```
    $ heroku run rake db:seed
    ```
* Open URL of running application in browser
    ```
    $ heroku open
    ```

### Heroku URL
* [https://amit-clinic.herokuapp.com/](https://amit-clinic.herokuapp.com/)

