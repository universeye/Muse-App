//
//  PlaylistCardView.swift
//  Muse
//
//  Created by Terry Kuo on 2021/6/1.
//

import SwiftUI
import MediaPlayer

struct PlaylistCardView: View {
    
    let playlist: MPMediaItemCollection
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            
            Spacer()
            
            HStack {
                
                
                VStack(alignment: .leading) {
                    Text("\(playlist.value(forProperty: MPMediaPlaylistPropertyName) as? String ?? "N/A")")
                    Text("\(playlist.value(forProperty: MPMediaPlaylistPropertyDescriptionText) as? String ?? "N/A")")
                        .font(.caption)
                        .lineLimit(2)
                    
                    
                }
                .foregroundColor(.white)
                
                Spacer(minLength: 0)
            }
            
            .padding(10)
            .frame(height: 50)
            .background(
                Image(uiImage: playlist.representativeItem?.artwork?.image(at: CGSize(width: 500, height: 500)) ?? UIImage(named: "music-background")!)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 50)
                    .blur(radius: 50, opaque: true)
                    .cornerRadius(10, corners: [.bottomLeft, .bottomRight])
//                BlurView(style: .systemUltraThinMaterial)
//                    .cornerRadius(10, corners: [.bottomLeft, .bottomRight])
            )
           
        }
        .background(
            Image(uiImage: playlist.representativeItem?.artwork?.image(at: CGSize(width: 500, height: 500)) ?? UIImage(named: "music-background")!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        )
        .aspectRatio(1, contentMode: .fit)
        .shadow(color: Color.black.opacity(0.05), radius: 2.5, x: 0, y: 2.5)
        
    }
}
