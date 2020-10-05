class API

    def self.get_data
        response = RestClient.get("https://swapi.dev/api/planets/")
        planets_array = JSON.parse(response.body)["results"]
        planets_array.each do |planetzz|
            CatFax.new(planetzz)
        end
    end


end

    