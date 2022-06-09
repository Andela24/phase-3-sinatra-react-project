class DestinationsContoller < ApplicationController

get "/destination" do
  # render all of the authors as JSON
  Destination.all.to_json(include: [:attractions])

end

get "/destination/:id" do
  find_destination
  destination_to_json
end

post "/destination/new" do
  puts "POST"
  @destination = Destination.new(params)
  if @destination.save
    # return object as json if saved
    destination_to_json
  else
    # return error messages if not saved
    destination_error_messages
  end
end

post "/destination/:destination_id/attractions/new" do
    @destination = find_destination
    @attraction = @destination.attractions.build(params)
    if @attraction.save
      # return object as json if saved
      attraction_to_json
    else
      # return error messages if not saved
      attraction_error_messages
    end
  end

  delete "/destination/:id" do
    find_destination
    if @destination
      @destination.destroy
      @destination.to_json
    else
      { errors: ["Destination Doesn't Exist"] }.to_json
    end
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