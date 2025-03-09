//
//  ContentView.swift
//  SwiftUiMscDemo
//
//  Created by SATABHISHA ROY on 19/02/25.
//

import SwiftUI

struct ContentView: View {
    
    let hikes = [
        Hike(name: "Salmonberry Trail", photo: "m", miles: 6.0),
        Hike(name: "Tom Dick and Hary Mountain", photo: "m", miles: 8.0),
        Hike(name: "Priya Roy", photo: "m", miles: 10.0)]
    
    var body: some View {
        NavigationStack {
            List(hikes) { hike in
                NavigationLink(value: hike) {
                    HikeCellView(hike: hike)
                }
            }.navigationTitle("Hikes")
                .navigationDestination(for: Hike.self){ hike in
                    HikeDetailScreen(hike: hike)
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HikeCellView: View {
    let hike: Hike
    var body: some View {
        HStack(alignment: .top) {
            Image(hike.photo)
                .resizable()
                .aspectRatio( contentMode: .fit)
                .frame(width: 100, height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
            VStack {
                Text(hike.name)
                Text("\(hike.miles.formatted()) miles")
            }
        }
    }
}
