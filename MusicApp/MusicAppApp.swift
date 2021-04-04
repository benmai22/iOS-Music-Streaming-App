//
//  MusicAppApp.swift
//  MusicApp
//
//  Created by benjamin mai on 4/2/21.
//

import SwiftUI
import Firebase

@main
struct MusicAppApp: App {
    let data = TheData()
    init() {
        FirebaseApp.configure()
        data.loadAlbums()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView(data: data)
        }
    }
}
