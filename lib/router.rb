require 'logger'
require_relative 'api'

# Delegate /api requests to the API, and send the rest to the SPA
class Router < Roda
  plugin :public, root: "#{APP_ROOT}/client/dist"
  plugin :multi_run
  plugin :type_routing
  plugin :run_append_slash
  run 'api', API::Router
  use Rack::CommonLogger, Logger.new($stdout)
  route do |r|
    r.multi_run
    r.public
    r.get do
      r.html { IO.read("#{APP_ROOT}/client/dist/index.html") }
    end
  end
end
