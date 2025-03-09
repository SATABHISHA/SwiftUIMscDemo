//
//  HikeDetailScreen.swift
//  SwiftUiMscDemo
//
//  Created by SATABHISHA ROY on 09/03/25.
//

import SwiftUI

struct HikeDetailScreen: View {
    
    let hike: Hike
    @State  var zoomed: Bool = false
    
    var body: some View {
        VStack {
            Image(hike.photo)
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation {
                        zoomed.toggle()
                    }
                }
            Text(hike.name)
                .font(.title)
            Text("\(hike.miles.formatted()) miles")
            Spacer()
        }.navigationTitle(hike.name).navigationBarTitleDisplayMode(.inline)
    }
}

struct HikeDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            HikeDetailScreen(hike: Hike(name: "Salmonberry Trail", photo: "m", miles: 6.0))
        }
    }
}



