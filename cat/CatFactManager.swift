//
//  CatFactManager.swift
//  cat
//
//  Created by Jayden Lee on 11/10/21.
//

import Foundation
import SwiftUI

struct CatFact: Decodable {
    var fact: String
    var length: Int
}

class CatFactManager: ObservableObject{
    @Published var catFact: CatFact?
    
    func getCatFact() {
        let apiURL = URL(string: "https://catfact.ninja/fact")!
        let request = URLRequest(url:apiURL)

        URLSession.shared.dataTask(with: request) {
            data, response, error in
            if let data = data {
                print(String(data: data, encoding: .utf8)!)
                let decoder = JSONDecoder()
                DispatchQueue.main.async {
                    self.catFact = try? decoder.decode(CatFact.self, from: data)
                }
            }
        }
        .resume()
    }
}
