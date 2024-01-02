//
//  FavoritesManager.swift
//  SleepSounds
//
//  Created by Aljwhra Alnasser on 08/12/2023.
//

import Foundation

class FavoritesManager: ObservableObject {
    private let favoritesKey = "FavoritesKey"
    
    @Published var favorites: [AudioCardModel] {
        didSet {
            saveFavorites()
        }
    }
    
    init() {
        if let storedFavorites = UserDefaults.standard.data(forKey: favoritesKey) {
            do {
                self.favorites = try JSONDecoder().decode([AudioCardModel].self, from: storedFavorites)
            } catch {
                print("Error decoding favorites: \(error)")
                self.favorites = []
            }
        } else {
            self.favorites = []
        }
    }
    
    private func saveFavorites() {
        do {
            let encoded = try JSONEncoder().encode(favorites)
            UserDefaults.standard.set(encoded, forKey: favoritesKey)
        } catch {
            print("Error encoding favorites: \(error)")
        }
    }
}

