//
//  Model.swift
//  Muse
//
//  Created by Terry Kuo on 2021/6/1.
//

import Foundation
import MediaPlayer


class Model: ObservableObject {
    
    static let shared = Model()
    
    @Published var currentSong: MPMediaItem?
    
    @Published var playlists = [MPMediaItemCollection]()
    @Published var librarySongs = [MPMediaItem]()
}
