module Session
  class SignIn < Trailblazer::Operation
    include Model
    model Thing # User にしたい

    contract do
      property :email, virtual: true
      property :password, virtual: true
    end

    def process(params)
      'hi'
    end
  end
end
