# _:feet: Shoe Store :feet:_

## Shoe Store - Ruby - 9.29.17

## By Sara Spink

## Description/User Stories:
- A user can add, update, delete and list shoe stores.
- A user can add and list new shoe brands. Shoe brands should include price.
- A user can add shoe brandsto a store.
- A user can associate the same brand of shoes with multiple stores.
- A user can see all of the brands a store sells on the individual store page.
- store names and shoe brands are saved with a capital letter no matter how the user enters them.
- Price displays in currency format (typing in 50 should be updated to $50.00.)
- A user cannot enter a blank field.
- All entries for stores and brands are unique.
- Store and brand names to have a maximum of one hundred characters.

## Setup/Installation:

```
$ git clone .......
```

Install required gems:
```
$ bundle install
```

Create databases:
```
rake db:create
rake db:schema:load
```

Start the webserver:
```
$ ruby app.rb
```

Navigate to `localhost:4567` in browser.


## Technologies Used

- Ruby
- Sinatra
- PostgreSQL/Active Record

## Support and contact details

_If you have any updates or suggestions please contact Sara Spink or make a contribution to this repository._

### License

_MIT License_

Copyright (c) [2017] [Sara Spink]

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.*
