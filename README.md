# GOVUK Frontend for Rails

Adds the GOVUK Frontend for Rails using the asset pipeline.

https://github.com/alphagov/govuk-frontend

## Breaking Changes in v3.0.0

This release of the GOVUK Frontend has breaking changes! Do not update to this version until you have read and understood:

You will not be required to updated any file paths with govuk as we take care of that for you, all others changes will need to be managed:

https://github.com/alphagov/govuk-frontend/releases/tag/v3.0.0

## Limitations

This gem does not include the ie8 version of GOVUK Frontend, as the service standard no longer requires it:

https://www.gov.uk/service-manual/technology/designing-for-different-browsers-and-devices

This gem and its documentation cannot tell you how to use the GOVUK effectively, see the GOVUK Design System documentation for that:

https://design-system.service.gov.uk/
## Installation

Add this line to your application's Gemfile:

```ruby
gem 'dxw_govuk_frontend_rails'
```

And then execute:

    $ bundle

## Usage
Your Rails app will need to have sass enabled.

### Basic usage

If the service you are building does not need to modify or extend the GOVUK Frontend all you need to do is import the main sass and javascript files into your Rails app:

- create a sass file in your application:
```
app/assets/stylesheets/govuk_frontend_rails.scss
```
- import the styles into `govuk_frontend_rails.scss`:
```sass
@import "govuk-frontend-rails";
```
- require the `govuk-frontend-rails.scss` file in `application.css` or equivalent:

```
*= require govuk_frontend_rails
```

- require the javascript into `app/assets/javascripts/application.js`:

```
//= require govuk_frontend_rails
```
- initialise the GOVUK Frontend either in a .js file on in your application layout:

```javascript
window.onload = function() {
  window.GOVUKFrontend.initAll()
};
```
- update your application markup to use the GOVUK Frontend class names

IMPORTANT: You cannot use the GOVUK Frontend without changes if the service you are building is not on GOV.UK, read and understand the guidance here:

https://www.gov.uk/service-manual/design/making-your-service-look-like-govuk#if-your-service-isnt-on-govuk

## Tracking version
We aim to tracking the version of GOVUK Frontend.

## Updating to a new Version of GOVUK Frontend

When a new version of the GOVUK Frontend is released:

- set the new version number in `package.json` and `lib/dxw_govuk_frontend_rails/version.rb`
- run  `npm update` to get the new release
- run `bundle rake` to compile the new assets
- commit the changes
- tag with the same release number as GOVUK Frontend
- push the changes
- CircleCI will build the gem and push to Rubygems
