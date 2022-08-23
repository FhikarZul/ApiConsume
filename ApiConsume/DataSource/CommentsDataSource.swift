//
//  CommentsDataSource.swift
//  ApiConsume
//
//  Created by Lucy on 23/08/22.
//

import Foundation

class CommentsDataSource{
    
    func loadData(completion: @escaping ([Comments]) -> ()){
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/comments") else{
            print("invalid url")
            
            return
        }
        
        URLSession.shared.dataTask(with: url){ data, response, error in
            let comments = try? JSONDecoder().decode([Comments].self, from: data!)
            print(comments!)
            
            DispatchQueue.main.async {
                completion(comments!)
            }
            
        }.resume()
    }
}
