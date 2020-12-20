//
//  ContentView.swift
//  SwiftUI-Clean-Architecture
//
//  Created by Doniyorbek on 12/19/20.
//

import SwiftUI

struct ContentView: View {
    
    let goalkeepers: [Goalkeeper] = [
        .init(id: 0, fullName: "Jan Oblak"),
        .init(id: 1, fullName: "Yassine Bounou"),
        .init(id: 2, fullName: "Keylor Navas"),
        .init(id: 3, fullName: "Marko Dmitrović"),
        .init(id: 4, fullName: "Keylor Navas"),
        .init(id: 5, fullName: "Marc-André ter Stegen"),
        .init(id: 6, fullName: "Emiliano Martínez"),
        .init(id: 7, fullName: "Nick Pope"),
        .init(id: 8, fullName: "Matvei Safonov"),
        .init(id: 9, fullName: "Juan Musso"),
        .init(id: 10, fullName: "Alessio Cragno"),
        .init(id: 11, fullName: "Anthony Lopes"),
        .init(id: 12, fullName: "Hugo Lloris"),
        .init(id: 13, fullName: "Edouard Mendy"),
        .init(id: 14, fullName: "Łukasz Fabiański"),
        .init(id: 15, fullName: "Weverton"),
    ]
    
    
    var body: some View {
        NavigationView {
            List(goalkeepers) {
                Text($0.fullName).font(.subheadline)
            }.navigationBarTitle("Goalkeepers")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Goalkeeper: Identifiable{
    var id: Int
    var fullName: String
}

