class API

    def self.get_data
        response = RestClient.get("https://cat-fact.herokuapp.com/facts")
        catz_array = JSON.parse(response.body)["results"]
        catz_array.each do |catz|
            CatFax.new(catz)
        end
    end


end

    