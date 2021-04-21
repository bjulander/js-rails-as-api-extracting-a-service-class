class SightingSerializer

    def initialize(sighting_object)
        @sighting = sighting_object
       # to_serialized_json(@sighting)
    end

    def to_serialized_json #(sighting)
        @sighting.to_json(:include => {
          :bird => {:only => [:name, :species]},
          :location => {:only => [:latitude, :longitude]}}, 
          :except => [:updated_at])
    end
    

end