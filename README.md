# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

## Welcome to Playtunes

This was designed to be a place where people can add songs and create playlists but it's not quite finished yet!

We're hoping you can poke around and fix anything that's wonky or missing functionality. Feel free to do as much as you can and leave whatever notes within the code you feel necessary for context. We do NOT expect you write specs, but if you're confident in doing so...we're not going to stop you.

Make this your own and have fun!

## Basics
- in terminal start off by running: `bundle install`
- run `rails db:migrate` to run all migrations
- run `rails db:seed` to seed your database (will only need to do this once)
- `rails server` to run the rails server
- http://localhost:3000/ to see the webpage


## Tips
- if you need to reseed your database and start over run the following one after the other:
```
rails db:rollback STEP=99

rails db:migrate

rails db:seed
```
- this project uses bootstrap for styling: https://getbootstrap.com/docs/5.3/getting-started/introduction/

