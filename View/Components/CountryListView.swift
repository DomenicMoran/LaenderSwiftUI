//
//  CountryListView.swift
//  LänderSwiftUI
//
//  Created by Domenic Moran on 15.08.22.
//

import SwiftUI

struct CountryListView: View {
    @EnvironmentObject var userDefaultsManager: UserDefaultsManager
    
    let countries: [Country]
    
    var body: some View {
        List(countries) { country in
            NavigationLink(destination: CountryDetailView(country: country)) {
                CountryCell(country: country)
            }
        }
    }
}

struct CountryListView_Previews: PreviewProvider {
    static var previews: some View {
        let countries: [Country] = Bundle.main.decode(fileName: "data.json")
        CountryListView(countries: countries)
            .environmentObject(UserDefaultsManager())
    }
}
