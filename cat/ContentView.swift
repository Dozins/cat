//
//  ContentView.swift
//  cat
//
//  Created by Jayden Lee on 11/10/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            CatFactView()
                .tabItem {
                    Label("Facts", systemImage: "lightbulb")
                }
            CatPhotoView()
            .tabItem {
                Label("Photos", systemImage: "photo")
            }
        }
        .onAppear {
            UITabBar.appearance().backgroundColor = UIColor(red: 255/255, green: 200/255, blue:0/255, alpha: 0.5)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
