require_relative './env'
require_relative '../src/ringcentral'
require 'pp'

rc = RingCentral.new($app_key, $app_secret, $server)

pp rc.restapi.endpoint
pp rc.restapi('v1.0').endpoint

pp rc.restapi('v1.0').dictionary.endpoint
pp rc.restapi('v1.0').dictionary.country.endpoint
pp rc.restapi('v1.0').dictionary.country('46').endpoint
