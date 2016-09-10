require "./simple_api/*"
require "./user/*"
require "kemal"

module SimpleApi
  get "/" do
    "Hello World!"
  end

  get "/:name" do |env|
    name = env.params.url["name"]
    "Helo #{name}!"
  end

  User::UserController.new
end

Kemal.run
