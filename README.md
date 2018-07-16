## Clinic app with GDPR consents

### Overview
This is Rails application for GDPR implementation in clinic application. You can deploy this app on internet. 
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
* Set Development ENVs for action mailer in config/environments/development.rb 
    ``` 
      config.action_mailer.smtp_settings = {
          user_name:      ENV['SENDMAIL_USERNAME'],
          password:       ENV['SENDMAIL_PASSWORD'],
          domain:         ENV['MAIL_HOST'],
          address:       'smtp.gmail.com',
          port:          '587',
          authentication: :plain,
          enable_starttls_auto: true
      }

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
* Set Production ENVs for action mailer in heroku app settings. Refer config/environments/production.rb 
    ``` 
      # Configure action mailer
      config.action_mailer.default_url_options = {host: ENV['HOST_NAME']}
      config.action_mailer.delivery_method = :smtp
      config.action_mailer.smtp_settings = {
          user_name:      ENV['SENDMAIL_USERNAME'],
          password:       ENV['SENDMAIL_PASSWORD'],
          domain:         ENV['MAIL_HOST'],
          address:       'smtp.gmail.com',
          port:          '587',
          authentication: :plain,
          enable_starttls_auto: true
      }
    ```
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

