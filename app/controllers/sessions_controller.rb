class SessionsController < ApplicationController
  def new
    @form = Session::SignIn
    form Session::SignIn
  end

  def create
    run Session::SignIn do
      redirect_to root_path and return
    end

    render :new
  end
end
