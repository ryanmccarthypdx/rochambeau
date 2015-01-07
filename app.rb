
require('sinatra')
require('sinatra/reloader')
require('./lib/rochambeau')

get('/') do
  erb(:root)
end


get('/form') do
  erb(:form)
end


get('/form_2p') do
  erb(:form_2p)
end

get('/result') do
  @object = (params.fetch('object').to_i()).rochambeau(params.fetch('object2').to_i())
  erb(:result)
end

get('/result_1p') do
  @object = (params.fetch('object').to_i()).rochambeau(rand(3))
  erb(:result)
end
