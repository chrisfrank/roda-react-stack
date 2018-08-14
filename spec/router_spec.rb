require 'spec_helper'
require 'lib/router'

RSpec.describe Router do
  it 'mounts the API at /api' do
    get('/api') do |res|
      expect(res.status).to eq(200)
      expect(res.content_type).to eq('application/json')
    end
  end

  it 'serves index.html at any other GET endpoint' do
    get '/jim.html' do |res|
      expect(res.body).to include('html')
    end
  end
end
