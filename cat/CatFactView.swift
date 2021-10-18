//
//  CatFactView.swift
//  cat
//
//  Created by Jayden Lee on 11/10/21.
//

import SwiftUI

struct CatFactView: View {
    @ObservedObject var catFactManager = CatFactManager()
    var body: some View {
        VStack {
            Spacer()
            if let catFact = catFactManager.catFact {
                Text(catFact.fact)
                    .padding()
                    .multilineTextAlignment(.center)
            } else {
                ProgressView()
            }
            Spacer()
            Rectangle()
                .foregroundColor(.init(uiColor: UIColor(red: 255/255, green: 200/255, blue:0/255, alpha: 0.5)))
                .frame(height: 20)
        }
        .onAppear {
            catFactManager.getCatFact()
        }
    }
}

struct CatFactView_Previews: PreviewProvider {
    static var previews: some View {
        CatFactView()
    }
}
