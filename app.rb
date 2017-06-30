require('sinatra')
  require('sinatra/reloader')
  require('./lib/word_count')
  also_reload('lib/**/*.rb')

  get('/') do
    erb(:index)
  end

  get('/count') do
    check = params.fetch('word')
    @count = params.fetch('line').count(check)
    erb(:count)
  end
