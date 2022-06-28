class Link12diversaoController < ApplicationController
    
   
    

    def link12diversao
        @resp = RestClient.get 'https://dog.ceo/api/breeds/image/random'
        @img = JSON.parse(@resp)
        
    end

end



#url = RestClient.get(https://dog.ceo/api/breeds/image/random, headers={c3919b2a-c0d7-4e01-add5-2ca715e58cd9})