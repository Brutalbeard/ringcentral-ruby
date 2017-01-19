require_relative './env'
require_relative '../src/ringcentral'
require 'pp'

rc = RingCentral.new($app_key, $app_secret, $server)

pp rc.restapi.getResponse
pp rc.restapi('v1.0').getResponse
pp rc.restapi.get
pp rc.restapi('v1.0').get

rc.authorize($username, $extesion, $password)

pp rc.restapi('v1.0').dictionary.country.getResponse
pp rc.restapi('v1.0').dictionary.country('46').getResponse

dictionary = rc.restapi('v1.0').dictionary()
country = dictionary.country('46').get
pp country['id']
pp country['name']
pp country['isoCode']
pp country.id
pp country.name
pp country.isoCode
