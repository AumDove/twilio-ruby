##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /       

module Twilio
  module REST
    class Pricing < Domain
      class V1 < Version
        class PhoneNumberList < ListResource
          ##
          # Initialize the PhoneNumberList
          def initialize(version)
            super(version)
            
            # Path Solution
            @solution = {}
            
            # Components
            @countries = nil
          end
          
          ##
          # Access the countries
          def countries(iso_country=:unset)
            if iso_country != :unset
              return CountryContext.new(
                  @version,
                  iso_country,
              )
            end
            
              @countries ||= CountryList.new(
                  @version,
              )
          end
          
          ##
          # Provide a user friendly representation
          def to_s
            '#<Twilio.Pricing.V1.PhoneNumberList>'
          end
        end
      
        class PhoneNumberPage < Page
          def initialize(version, response)
            super(version, response)
            
            # Path Solution
            @solution = {}
          end
          
          def get_instance(payload)
            return PhoneNumberInstance.new(
                @version,
                payload,
            )
          end
          
          ##
          # Provide a user friendly representation
          def to_s
            '<Twilio.Pricing.V1.PhoneNumberPage>'
          end
        end
      
        class PhoneNumberInstance < InstanceResource
          def initialize(version, payload)
            super(version)
            
            # Marshaled Properties
            @properties = {
                'name' => payload['name'],
                'url' => payload['url'],
                'links' => payload['links'],
            }
          end
          
          def name
            @properties['name']
          end
          
          def url
            @properties['url']
          end
          
          def links
            @properties['links']
          end
          
          ##
          # Provide a user friendly representation
          def to_s
            "<Twilio.Pricing.V1.PhoneNumberInstance>"
          end
        end
      end
    end
  end
end