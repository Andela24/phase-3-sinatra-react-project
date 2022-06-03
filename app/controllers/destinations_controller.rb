class DestinationsContoller < ApplicationController
  get "/destination" do
    destination=Destination.all
    destination.to_json
    end

get "/destination/:id" do
    attraction=Attraction.find_by_id(params["id"])
    attraction.to_json(include: [:destination])
end



end