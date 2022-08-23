//
//  Observer.swift
//  ApiConsume
//
//  Created by Lucy on 23/08/22.
//

import Foundation

class Observer: ObservableObject{
    @Published var comments: [Comments] = []
    
    init(){
        _getComments()
    }
    
    func _getComments(){
        
        CommentsDataSource().loadData{ data in
            self.comments = data
           
        }
        
        
        
        
    }
}
