
Ruby version: 2.6.1<br>
Rails version: 6.0.3<br>
The project is default configured with postgresql 12.3<br><br>

Installing the gems:<br>
    $ bundle install<br><br>

Creating the Database:<br>
    $ rails db:create<br>
    $ rails db:migrate<br><br>

You can use ngrok to install / debug the webhook calls:<br>
    $ sudo ngrok http 3000<br>
https://ngrok.com/<br><br>

Tests with RSpec:<br>
    $ rspec
