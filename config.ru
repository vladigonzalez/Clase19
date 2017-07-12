#config.ru
require 'rack'
class MiPrimeraWebApp
 	def call(env)
 		#[200, {'Content-Type' => 'text/html'},[File.read("index.html")]]
 		[200, {'Content-Type' => 'text/html'},['<p>lorem ipsum lorem ipsum lorem ipsum lorem ipsum</p>']]
  end
end
run MiPrimeraWebApp.new
