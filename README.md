# GOVUK Frontend for Rails

https://github.com/alphagov/govuk-frontend

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

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/dxw_govuk_frontend_rails. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the DxwGovukFrontendRails project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/dxw_govuk_frontend_rails/blob/master/CODE_OF_CONDUCT.md).
