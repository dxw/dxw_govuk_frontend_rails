# GOV.UK Frontend for Rails

## Archived

With the new asset pipeline in Rails 7 this project has little value and users
are encouraged to utilise the GOV.UK Frontend with Rails in a way that best
suits their own context.

4.6.0 will be the last relase of this gem and this repo will be archived.

## Read this first

Although this gem makes it super easy to add the GOV.UK Frontend to your Rails
applications, we would recommend using it as a guide to add the GOV.UK Frontend
yourself.

## About

Adds the GOV.UK Frontend for Rails using the asset pipeline.

https://github.com/alphagov/govuk-frontend

## Breaking Changes in v3.0.0

This release of the GOV.UK Frontend has breaking changes! Do not update to this
version until you have read and understood:

You will not be required to updated any file paths with `govuk` as we take care
of that for you, all others changes will need to be managed:

https://github.com/alphagov/govuk-frontend/releases/tag/v3.0.0

## Limitations

This gem does not include the `ie8` version of GOV.UK Frontend, as the service
standard no longer requires support for Internet Explorer versions less than 11:

https://www.gov.uk/service-manual/technology/designing-for-different-browsers-and-devices

This gem and its documentation cannot tell you how to use the GOV.UK patterns
effectively, see the GOV.UK Design System documentation for that:

https://design-system.service.gov.uk/

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'dxw_govuk_frontend_rails'
```

And then execute:

```
$ bundle
```

## Usage

Your Rails app will need to have SCSS enabled.

**IMPORTANT: You must not use this library without changes if the service you
are building is not on GOV.UK. Read and understand the guidance here:**

https://www.gov.uk/service-manual/design/making-your-service-look-like-govuk#if-your-service-isnt-on-govuk

### Basic usage

If the service you are building does not need to modify or extend the GOV.UK
Frontend, all you need to do is import the main SCSS and JavaScript files into
your Rails app:

- create a SCSS file in your application:

  `app/assets/stylesheets/govuk_frontend_rails.scss`

- import the styles into `govuk_frontend_rails.scss`:

  `@import "govuk-frontend-rails";`

- import the `govuk-frontend-rails.scss` file in the comment block in
  `app/assets/stylesheets/application.css` or equivalent:

  `*= require govuk_frontend_rails`

- import the JavaScript in the comment block of
  `app/assets/javascripts/application.js`:

  `//= require govuk_frontend_rails`

- initialise the GOV.UK Frontend either in a .js file or in your application
  layout:

  `window.onload = function() { window.GOVUKFrontend.initAll() };`

- update your application markup to use the GOV.UK Frontend class names

## Tracking GOV.UK Frontend versions

We aim to track the latest version of GOV.UK Frontend but we may fall behind.
Opening an issue if we are behind on a new release would be helpful, or open a
PR to update to the latest release!

## Updating to a new version of GOV.UK Frontend

When a new version of the GOV.UK Frontend is released:

- make a new branch with the GOV.UK Frontend version number
- set the new version number in `package.json` and
  `lib/dxw_govuk_frontend_rails/version.rb`
- run `npm update` to get the new release of the GOV.UK Frontend
- run `bundle exec rake` to compile the new assets
- commit the changes
- tag with the same release number as GOV.UK Frontend
- push the change
- push the tag
- merge your branch
- make a new release of the tag on GitHub
- GitHub actions will build the gem and push to RubyGems
