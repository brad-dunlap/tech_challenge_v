# README

## Welcome to Playtunes

This was designed to be a place where people can add songs and create playlists but it's not quite finished yet!

We're hoping you can poke around and fix anything that's wonky or missing functionality. Feel free to do as much as you can and leave whatever notes within the code you feel necessary for context. We do NOT expect you write specs, but if you're confident in doing so...we're not going to stop you.

Make this your own and have fun!

## Basics
- in terminal cd into you host repo and run: `bundle install`
- run `rails db:migrate` or `bin/rails db:migrate` to run all migrations
- run `rails db:seed` or `bin/rails db:seed` to seed your database (will only need to do this once)
- `rails server` or `bin/rails server` to run the rails server
- visit http://localhost:3000/ to see the webpage
- in a seperate terminal you can use `rails console` or `bin/rails console` to get into the project's console and practice querying the database

Try to push all your changes as one commit once you feel as though you're ready to submit your code for this assessment 😎.


## Tips
- if you see any errors claiming you don't have rails installed when running `rails server` or any rails commands. Try the command with appending the "bin" directory: `bin/rails server`
- if you need to reseed your database and start over, run the following commands one at a time in terminal:
```
rails db:rollback STEP=99 

rails db:migrate

rails db:seed
```
- this project uses bootstrap for styling: https://getbootstrap.com/docs/5.3/getting-started/introduction/

