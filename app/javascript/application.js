// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import { Application } from "stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"
//= require jquery3
//= require popper
//= require bootstrap-sprockets

import "bootstrap"
import "../stylesheets/application"
