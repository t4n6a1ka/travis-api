require 'travis/api/app'

class Travis::Api::App
  class Endpoint
    # TODO v2 should be /repos
    class Repositories < Endpoint
      get '/' do
        respond_with all(params)
      end

      get '/:id' do
        respond_with one(params)
      end

      # TODO the format constraint neither seems to work nor fail?
      get '/:id/cc.:format', format: 'xml' do # v1
        respond_with one(params)
      end

      # get '/:owner_name/:name.?:format?' do       # v1
      # get '/repos/:owner_name/:name.?:format?' do # v2
      #   respond_with service(:repositories, :one, params)
      # end
    end
  end
end
