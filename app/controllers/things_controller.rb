class ThingsController < ApplicationController
  def index

  end

  def new
    form Thing::Create
  end

  def create
    run Thing::Create do |op|
      return redirect_to things_path
    end

    render :new
  end
end
