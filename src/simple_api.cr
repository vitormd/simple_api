require "./simple_api/*"
require "kemal"

module SimpleApi
  get "/" do
    "Hello World!"
  end

  get "/:name" do |env|
    name = env.params.url["name"]
    "Helo #{name}!"
  end

  get "/json" do |env|
    {
      name: env.params.query["name"],
      age:  env.params.query["age"],
    }.to_json
  end
end

Kemal.run
