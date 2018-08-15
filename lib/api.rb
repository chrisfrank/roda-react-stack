require_relative 'db'
require_relative 'api/json_router'

module API
  # Mount API endpoints as mini-apps,
  # as per the commented line below
  class Router < JSONRouter
    plugin :multi_run
    plugin :run_append_slash
    #run 'humans', Humans
    route do |r|
      r.multi_run
      r.root do
        %w[you should document endpoints here]
      end
    end
  end
end
