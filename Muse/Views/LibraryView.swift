//
//  LibraryView.swift
//  Muse
//
//  Created by Terry Kuo on 2021/6/1.
//

import SwiftUI

struct LibraryView: View {
    
    @EnvironmentObject var model: Model
    
    var body: some View {
        NavigationView {
            List {
                ForEach(model.librarySongs, id: \.self) { playlist in
                    Text("Hello")
                }
            }
        }
        .onAppear {
            print("Library Songs: \(model.librarySongs.count)")
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
