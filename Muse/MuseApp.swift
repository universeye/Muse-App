//
//  MuseApp.swift
//  Muse
//
//  Created by Terry Kuo on 2021/6/1.
//

import SwiftUI
import StoreKit
import MediaPlayer

@main
struct MuseApp: App {
    
    @Environment(\.scenePhase) var scenePhase
    
    init () {
        updateSongs()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onChange(of: scenePhase, perform: { value in
                    if value == .active {
                        updateSongs()
                    }
                })
        }
    }
    
    func updateSongs() {
        SKCloudServiceController.requestAuthorization { status in
            if status == .authorized {
                let songQuery = MPMediaQuery.songs()
                if let songs = songQuery.items {
                    let desc = NSSortDescriptor(key: MPMediaItemPropertyLastPlayedDate, ascending: false)
                    let sortedSongs = NSArray(array: songs).sortedArray(using: [desc])
                    
                    Model.shared.librarySongs = sortedSongs as! [MPMediaItem]
                }
                
                let platlistQuery = MPMediaQuery.playlists()
                if let plalists = platlistQuery.collections {
                    Model.shared.playlists = plalists
                }
            }
        }
    }
}
