//
//  CountryDetailView.swift
//  LänderSwiftUI
//
//  Created by Domenic Moran on 14.08.22.
//

import SwiftUI

struct CountryDetailView: View {
    @EnvironmentObject var userDefaultsManager: UserDefaultsManager
    
    let country: Country
    
    var body: some View {
        VStack{
            Image(country.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(Color.black ,lineWidth: 2)
                )
                .padding()
            List(country.details, id: \.self) { detail in
                Text(detail)
            }
            .listStyle(InsetGroupedListStyle())
        }
        .navigationBarItems(trailing:
                                Button(action: { userDefaultsManager.toggleFavStatus(for: country) }) {
                                    Image(systemName: userDefaultsManager.isCountryFav(country: country) ? "suit.heart.fill" : "suit.heart")
                                        .font(.headline)
                                        .foregroundColor(.pink)
        }
        )
        .navigationBarTitle(country.countryName)
    }
}

struct CountryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let countries: [Country] = Bundle.main.decode(fileName: "data.json")
        CountryDetailView(country: countries[0])
            .environmentObject(UserDefaultsManager())
    }
}
