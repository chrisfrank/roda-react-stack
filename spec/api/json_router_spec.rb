require 'spec_helper'
require 'lib/api'

RSpec.describe API::JSONRouter do
  let(:app) do
    Class.new(API::JSONRouter) do |klass|
      klass.route do |r|
        r.get { 'OK' }
      end
    end
  end
  it 'responds with OK' do
    get('/etc') do |res|
      expect(res.status).to eq(200)
    end
  end
end
