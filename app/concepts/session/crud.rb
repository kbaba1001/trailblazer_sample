module Session
  class SingIn < Trailblazer::Operation
    contract do
      property :email, virtual: true
      property :password, virtual: true
    end
  end
end
