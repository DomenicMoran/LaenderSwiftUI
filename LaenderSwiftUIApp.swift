//
//  La_nderSwiftUIApp.swift
//  LänderSwiftUI
//
//  Created by Domenic Moran on 14.08.22.
//

import SwiftUI

@main
struct LaenderSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                MainView()
                    .tabItem {
                        Image(systemName: "flag")
                        Text("Länder")
                    }
                CountryFavView()
                    .tabItem {
                        Image(systemName: "heart.fill")
                        Text("Favoriten")
                    }
            }
            .environmentObject(UserDefaultsManager())
        }
    }
}
