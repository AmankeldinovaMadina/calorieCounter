//
//  ColoriesApp.swift
//  Colories
//
//  Created by Madina Amankeldinova on 16.05.2024.
//

import SwiftUI

@main
struct ColoriesApp: App {
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
