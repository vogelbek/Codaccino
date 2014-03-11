# Codaccino

## What is Codaccino?

Codaccino is an app that allows you to find coffeshops that are near you and rate them from a developers perspective. All of the data is community powered and maintained.  We care about wifi speeds, number of outlets, noise levels, and the atmosphere.

Currenly we are in the early stages of building the app. But if you wanted to hit our site automagically you can point your bot near our sign-in page at [the codaccino login page](http://codaccino.com/admins/sign_in). After you sign in you can create a [new coffeeshop](http://codaccino.com/shops/new). We're on a development server on heroku so it will take about one minute for the site to load.

To add a shop you must have the data. See example below.

  name: 'Richmond Beach Coffee Company' data validation - min 4 characters and must not be blank
  address: '1442 NW Richmond Beach Rd Shoreline, WA 98177' data validation - min 8 characters and must not be blank
  site: 'http://www.richmondbeachcoffee.net/' data validation - must not be blank
  phone: '(206) 542-0991' data validation - must have 10 numbers
  wifi_up: 80 data validation - numbers only
  wifi_down: 2 data validation - numbers only
  outlet_rating: 1 data validation - numbers only
  noise: 1 data validation - numbers only
  hrs_wkday: '6:00 am - 6:00 pm' no validation
  hrs_saturday: '6:00 am - 6:00 pm' no validation
  hrs_sunday: '7:00 am - 6:00 pm' no validation

## Our Current Travis Status

[![Build Status](https://travis-ci.org/vogelbek/Codaccino.png?branch=master)](https://travis-ci.org/vogelbek/Codaccino)

## Our Code Climate

[![Code Climate](https://codeclimate.com/github/vogelbek/Codaccino.png)](https://codeclimate.com/github/vogelbek/Codaccino)

