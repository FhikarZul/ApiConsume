//
//  ContentView.swift
//  ApiConsume
//
//  Created by Lucy on 23/08/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var obs: Observer
    
    var body: some View {
        NavigationView{
            List(self.obs.comments){
               comment in
                NavigationLink(
                    destination: Text(comment.body),
                    label: {
                        VStack(alignment: .leading){
                            Text(comment.name)
                            .font(.body)
                            
                            Text(comment.email)
                                .font(.caption)
                                .foregroundColor(.accentColor)
                        }
                })
            }
            .navigationTitle("Comments List")
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Observer())
    }
}
