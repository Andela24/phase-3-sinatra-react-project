class DestinationsContoller < ApplicationController
#   get "/destination" do
#     destination=Destination.all
#     destination.to_json(include [:attractions])
#     end

# get "/destination/:id" do
#     destination=Destination.find_by_id(params["id"])
#     destination.to_json(include: [:attractions])
# end

get "/destination" do
  # render all of the authors as JSON
  Destination.all.to_json(include: [attraction: {only: [:id, :name]}], except: [:created_at, :updated_at])
end

get "/destination/:id" do
  find_destination
  destination_to_json
end

post "/destination" do
  @destination = Destination.new(params)
  if @destination.save
    # return object as json if saved
    destination_to_json
  else
    # return error messages if not saved
    destination_error_messages
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



end