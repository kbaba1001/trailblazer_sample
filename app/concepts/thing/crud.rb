class Thing::Create < Trailblazer::Operation
  include Model
  model Thing, :create

  contract do
    property :title
    property :comment
  end

  def process(params)
    @model = Thing.new

    validate(params[:thing], thing) do |f|
      f.save
    end
  end
end
