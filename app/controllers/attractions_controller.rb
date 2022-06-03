class AttractionsController < ApplicationController
    get "/attraction" do 
        attraction=Attraction.all
        attraction.to_json
      end
end