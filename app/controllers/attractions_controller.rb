class AttractionsController < ApplicationController
    get "/attractions" do 
        # render all of the books as JSON
    Attraction.all.to_json
end

get "/destination/:destination_id/attractions" do
  find_destination
  @destination.attractions.to_json(include: [:destination])
end
# all attractions located at destination

get "/attractions/:id" do
  find_attraction
  attraction_to_json
end

post "/attractions/new" do
    puts "POST"
    @attraction = Attraction.new(params)
    if @attraction.save
      # return object as json if saved
      attraction_to_json
    else
      # return error messages if not saved
      attraction_error_messages
    end
  end

    post "/destination/:destination_id/attractions/new" do

    @destination = find_destination
    # @attraction = @destination.attractions.build(params)
    if @attraction.save
      # return object as json if saved
      attraction_to_json
    else
      # return error messages if not saved
      attraction_error_messages
    end
  end

patch "/attractions/:id" do
  find_attraction
  if @attraction.update(params)
    attraction_to_json
  else
    attraction_error_messages
  end
end

delete "/attractions/:id" do
  find_attraction
  if @attraction
    @attraction.destroy
    @attraction.to_json
  else
    { errors: ["Attraction Doesn't Exist"] }.to_json
  end
end

private
  def find_attraction
    @attraction = Attraction.find_by_id(params["id"])
  end

  def find_destination
    @destination = Destination.find_by_id(params["destination_id"])
  end

  def attraction_to_json
    @attraction.to_json(include: [:destination])
  end

  def attraction_error_messages
    { errors: @attraction.errors.full_messages }.to_json
  end
end
    
