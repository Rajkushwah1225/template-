// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import { Turbo } from "@hotwired/turbo-rails"
Turbo.session.drive = false // Disable turbo drive on some links if necessary
import Rails from '@rails/ujs';
import { Turbo } from "@hotwired/turbo-rails"
