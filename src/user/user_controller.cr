module SimpleApi
  module User
    class UserController
      get "/json" do |env|
        {
          name: env.params.query["name"],
          age:  env.params.query["age"],
        }.to_json
      end
    end
  end
end
