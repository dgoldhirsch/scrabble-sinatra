###Developer Log###

####First Session: boot-strapped virgin Sinatra project (2 hrs)####

Directory structure and bootstrapping of app came from...

    http://blog.chrisblunt.com/lightweight-web-apps-getting-started-with-sinatra/
    
Some of the settings in this didn't work, including a mistakenly escaped bit of Ruby code in app.rb.
Also, config.ru needs a leading './' when 'requiring' app.rb.

Added basic form for scrabble-solving per the assignment in index.haml, and implemented place-holder /post action for it in post_challenge.haml.  App now "works" by simply displaying the letters submitted by the form.

Added Minitest, putting tests in ./spec directory, thanks to…

    https://github.com/seattlerb/minitest
    http://stackoverflow.com/questions/4788288/how-to-run-all-the-tests-with-minitest

Added fromt-scratch Rakefile with default task to run all tests, with help from…

    http://rake.rubyforge.org/

Use Mou to prepare this README.md file.

####Second Session: compose scrabble-solver in Ruby####
[TBD]

####Wite scrabble-solver to app####
[TBD]

###TODOs###

In Gemfile wrap 'minitest' in :test group.
