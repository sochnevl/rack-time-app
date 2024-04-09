require 'rack'
require_relative 'app'

ROUTES = {
  '/time' => App.new
}.freeze

use Rack::ContentType, 'text/plain'
run Rack::URLMap.new(ROUTES)
