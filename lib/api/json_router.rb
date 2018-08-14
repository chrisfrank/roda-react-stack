require 'roda'

module API
  # A Roda router configured to handle JSON API endpoints
  class JSONRouter < Roda
    # handle PATCH, DELETE, etc
    plugin :all_verbs
    # convert Hashes and Arrays to JSON automatically
    plugin :json
    # parse JSON request bodies
    plugin :json_parser
    # allow halting of the request at any time
    plugin :halt
    # treat "/api/things" and "/api/things/" identically
    plugin :slash_path_empty
  end
end
