# README

## Basics
- in terminal cd into you host repo and run: `bundle install`
- run `rails db:migrate` or `bin/rails db:migrate` to run all migrations
- run `rails db:seed` or `bin/rails db:seed` to seed your database (will only need to do this once)
- `rails server` or `bin/rails server` to run the rails server
- visit http://localhost:3000/ to see the webpage
- in a seperate terminal you can use `rails console` or `bin/rails console` to get into the project's console and practice querying the database

Push all your changes up and create a Pull Request that points to this Repo's main branch when you're ready to submit this assessment😎.

## Tips
- if you see any errors claiming you don't have rails installed when running `rails server` or any rails commands. Try the command with appending the "bin" directory: `bin/rails server`
- if you need to reseed your database and start over, run the following commands one at a time in terminal:
```
rails db:rollback STEP=99 

rails db:migrate

rails db:seed
```
- this project uses bootstrap for styling: https://getbootstrap.com/docs/5.3/getting-started/introduction/

