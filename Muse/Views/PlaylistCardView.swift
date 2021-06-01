//
//  PlaylistCardView.swift
//  Muse
//
//  Created by Terry Kuo on 2021/6/1.
//

import SwiftUI

struct PlaylistCardView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            
            Spacer()
            HStack {
                Text("Playlist Name")
                Text("Playlist Details")
                
                Spacer()
            }
            .padding(10)
            .frame(height: 50)
           
        }
        
    }
}

struct PlaylistCardView_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistCardView()
    }
}
