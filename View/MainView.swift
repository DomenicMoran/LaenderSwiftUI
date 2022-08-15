//
//  ContentView.swift
//  LänderSwiftUI
//
//  Created by Domenic Moran on 14.08.22.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var userDefaultsManager: UserDefaultsManager
    
    var body: some View {
        NavigationView {
            CountryListView(countries: userDefaultsManager.allCountries)
                .navigationBarTitle("Länder")
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            MainView()
                .environmentObject(UserDefaultsManager())
        }
    }
