//
//  OrderManagementApp.swift
//  OrderManagement
//
//  Created by Minhaz on 28/11/21.
//

import SwiftUI

@main
struct OrderManagementApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
