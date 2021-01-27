class ApplianceSerializer

    def initialize(appliance_obj)
        @ao = appliance_obj
    end

    def to_serialized_json
        @ao.to_json(
        except: [:status, :url_on, :url_off, :created_at, :updated_at],
        include: [{schedules: {except: [:created_at, :updated_at]}}]
        )
    end
    
end