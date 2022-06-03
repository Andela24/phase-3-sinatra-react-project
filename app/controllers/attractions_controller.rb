class AttractionsController < ApplicationController
    get "/attraction" do 
            # render all of the books as JSON
    Attraction.all.to_json(include: [author: {only: [:id, :name]}], except: [:created_at, :updated_at])
end

get "/attraction/:attraction_id/destination" do
  find_attraction
  @attraction.destination.to_json(include: [:attraction])
end

get "/destination/:id" do
  find_destination
  destination_to_json
end

post "/attraction/:attraction_id/destination" do
  find_attraction
  @destination = @destination.attraction.build(params)
  if @attraction.save
    # return object as json if saved
    attraction_to_json
  else
    # return error messages if not saved
    attraction_error_messages
  end
end

patch "/destination/:id" do
  find_destination
  if @destination.update(params)
    destination_to_json
  else
    destination_error_messages
  end
end

delete "/attraction/:id" do
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
      end
end