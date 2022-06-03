class DestinationsContoller < ApplicationController

get "/destination" do
  # render all of the authors as JSON
  Destination.all.to_json

end

get "/destination/:id" do
  find_destination
  destination_to_json
end


private
  def find_destination
    @destination = Destination.find_by_id(params["id"])
  end

  def destination_to_json
    @destination.to_json(include: [:attractions])
  end

  def destination_error_messages
    { errors: @destination.errors.full_messages }.to_json
  end
end