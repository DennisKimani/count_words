require('capybara/rspec')
  require('./app')
  Capybara.app = Sinatra::Application
  set(:show_exceptions, false)

  describe('the counter path', {:type => :feature}) do
    it('counts the words which are repeated in a word') do
      visit('/')
    end
  end
