class WrittenThingsController < ApplicationController
  before_action :set_written_thing, only: [:show, :update, :destroy]

  # GET /written_things
  def index
    @written_things = WrittenThing.all

    render json: @written_things
  end

  # GET /written_things/1
  def show
    render json: @written_thing
  end

  # POST /written_things
  def create
    @written_thing = WrittenThing.new(written_thing_params)

    if @written_thing.save
      render json: @written_thing, status: :created, location: @written_thing
    else
      render json: @written_thing.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /written_things/1
  def update
    if @written_thing.update(written_thing_params)
      render json: @written_thing
    else
      render json: @written_thing.errors, status: :unprocessable_entity
    end
  end

  # DELETE /written_things/1
  def destroy
    @written_thing.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_written_thing
      @written_thing = WrittenThing.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def written_thing_params
      params.require(:written_thing).permit(:description)
    end
end
