# capybara-browserstack

[Capybara](http://jnicklas.github.io/capybara/) Integration with BrowserStack.

## Setup

- Clone the repo
- Install dependencies `bundle install`
- Update `config.yml` with your BrowserStack credentials `user` and `key`

### Run the tests

- To run single test, run `bundle exec rake single`
- To run parallel tests, run `bundle exec rake parallel`
- To run local tests, run `bundle exec rake local`
