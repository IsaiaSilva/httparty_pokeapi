module Pokemon
    include HTTParty
    
    base_uri CONFIG['url_padrao']
    format :json
    headers Server: 'cloudflare',
                    'content-type': 'application/json; charset=utf-8'

end