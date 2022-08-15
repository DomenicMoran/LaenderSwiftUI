//
//  UserDefaultsManager.swift
//  LänderSwiftUI
//
//  Created by Domenic Moran on 14.08.22.
//

import Foundation

class UserDefaultsManager: ObservableObject {
    private static let favoritesKey = "countryFavorites"
    
    @Published
    var favorites: [Int] = UserDefaults.standard.array(forKey: UserDefaultsManager.favoritesKey) as? [Int] ?? Array<Int>() {
        didSet{
            UserDefaults.standard.setValue(self.favorites, forKey: UserDefaultsManager.favoritesKey)
        }
        
    }
    let allCountries: [Country] = Bundle.main.decode(fileName: "data.json")
    
    
    func toggleFavStatus(for country: Country) {
        if favorites.contains(country.id) {
            favorites =  favorites.filter { $0 != country.id }
        } else {
            favorites.append(country.id)
        }
    }
    
    
    func isCountryFav(country: Country) -> Bool {
        return favorites.contains(country.id)
    }
    
    func getAllFavCountries() -> [Country] {
        return allCountries.filter {
            favorites.contains($0.id)
        }
    }
    
}
