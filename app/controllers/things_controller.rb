class ThingsController < ApplicationController
  def index
    @things = Thing.all
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
