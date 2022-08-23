//
//  ApiConsumeApp.swift
//  ApiConsume
//
//  Created by Lucy on 23/08/22.
//

import SwiftUI

@main
struct ApiConsumeApp: App {
    @StateObject var observer = Observer()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(observer)
        }
    }
}
