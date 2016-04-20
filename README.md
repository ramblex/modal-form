## Modal form example

This is an example of how I'd use jQuery-UI dialog form to implement a modal
form which handles errors (in response to
http://stackoverflow.com/questions/6374664/rails-and-modal-jquery-dialog-form).

Use the following to get started. After downloading the app run:

    bundle
    bundle exec rake db:migrate
    bundle rails s

Go to http://localhost:3000/articles and the modal form should come up when you click on the 'New article' link.
