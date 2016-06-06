//
//  PokemonController.swift
//  PokeApi
//
//  Created by Eva Marie Bresciano on 6/6/16.
//  Copyright © 2016 Eva Bresciano. All rights reserved.
//

import Foundation

class PokemonController {
    
    static let baseURL = "http://pokeapi.co/api/v2/pokemon/"
    
    static func getPokemon(searchTerm : String, completion: (pokemon: Pokemon?) -> Void) {
        let searchURL = baseURL + searchTerm.lowercaseString
        let url = NSURL(string: searchURL)
        guard let unwrappedURL = url else {
            return
        }
        NetWorkController.performRequestForURL(unwrappedURL, httpMethod: .Get) { (data, error) in
            guard let data = data,
                jsonDictionary = (try? NSJSONSerialization.JSONObjectWithData(data, options: .AllowFragments)) as? [String:AnyObject] else {
                    completion(pokemon: nil)
                    return
            }
            
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                let pokemon = Pokemon(dictionary: jsonDictionary)
                completion(pokemon: pokemon)
            })
        }
    }
    
}