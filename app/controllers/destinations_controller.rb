class DestinationsContoller < ApplicationController
  get "/destination" do
    destination=Destination.all
    destination.to_json
    end

get "/destination/:id" do
    destination=Destination.find_by_id(params["id"])
    destination.to_json(include: [:attractions])
end

# post "/destination" do
#   destination = Destination.new(params)
#   if destination.save

#     Destination.all.to_json(include: [attractions: {only: [:id]}])
# end



end