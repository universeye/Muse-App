//
//  SongCardView.swift
//  Muse
//
//  Created by Terry Kuo on 2021/6/1.
//

import SwiftUI
import MediaPlayer

struct SongCardView: View {
    
    let song: MPMediaItem
    
    var body: some View {
        
            HStack {
                
                Image(uiImage: song.artwork?.image(at: CGSize(width: 500, height: 500)) ?? UIImage(named: "music-background")!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60, height: 60)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
                VStack(alignment: .leading) {
                    Text(song.title ?? "N/A")
                    Text(song.artist ?? "N/A")
                        .font(.caption)
                }
                
                
                Spacer()
            }
            .padding(10)
           
        
    }
}


