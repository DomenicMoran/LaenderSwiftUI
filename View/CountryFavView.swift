//
//  CountryFavView.swift
//  LänderSwiftUI
//
//  Created by Domenic Moran on 15.08.22.
//

import SwiftUI

struct CountryFavView: View {
    @EnvironmentObject var userDefaultsManager: UserDefaultsManager
    
    
    var body: some View {
        NavigationView {
            VStack {
                if userDefaultsManager.favorites.isEmpty {
                    EmptyStateView()
                } else {
                    CountryListView(countries: userDefaultsManager.getAllFavCountries())
                }
            }
            .navigationBarTitle("Favoriten")
        }
    }
}

struct CountryFavView_Previews: PreviewProvider {
    static var previews: some View {
        CountryFavView()
    }
}
