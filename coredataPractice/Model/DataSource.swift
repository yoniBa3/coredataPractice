//
//  DataSource.swift
//  coredataPractice
//
//  Created by Yoni on 03/06/2020.
//  Copyright © 2020 Yoni. All rights reserved.
//

import Foundation

class DataSource{
    
    static let shared = DataSource()
    private init(){}
    
    func  fetchNews<T: Codable>(address: String,complation: @escaping(T) -> ()){
        //let address = "https://newsapi.org/v2/top-headlines?country=us&apiKey=4ffc117210af4f4cbaa6a8e94d31daad"
        
        guard let url = URL(string: address) else{return}
        
        let session = URLSession.shared
        session.dataTask(with: url) { (data, res, err) in
            print("Inside")
            guard let data = data else{return}
            print("Level 2")
             let decoder = JSONDecoder()
            do{
               
                let obj = try decoder.decode(T.self, from: data)
                complation(obj)
            }catch{
                print(error.localizedDescription)
                print("Error")
            }
            
        }.resume()
    }
    
}

