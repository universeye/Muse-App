//
//  PlaylistView.swift
//  Muse
//
//  Created by Terry Kuo on 2021/6/1.
//

import SwiftUI

struct PlaylistView: View {
    
    @EnvironmentObject var model: Model
    
    var body: some View {
        NavigationView {
            VStack {
                Button(action: {
                    print("Playlist Count: \(model.playlists.count)")
                }, label: {
                    Text("Button")
                })
                List {
                    ForEach(model.playlists, id: \.self) { playlist in
                        PlaylistCardView(playlist: playlist)
                    }
                }
            }
        }
    }
}

struct PlaylistView_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistView()
    }
}
