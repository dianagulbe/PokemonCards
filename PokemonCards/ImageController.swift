//
//  ImageController.swift
//  PokemonCards
//
//  Created by diana.gulbe on 08/08/2021.
//

import Foundation

class ImageController{
    
    static func getImage(for url: String, completion: @escaping(UIImage?) -> Void ) {
        
        guard let imageUrl = URL(string: url) else {
            fatalError("could not create url from this string \(url)")
        }
        
        NetworkController.performRequest(for: imageUrl, httpMethod: .get) { (data, error) in
            guard let data = data, let image = UIImage(data: data) else {
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }
            
            DispatchQueue.main.async {
                completion(image)
            }
        }
    }
}
