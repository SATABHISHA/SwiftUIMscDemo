//
//  StateBindingObservableDemo.swift
//  SwiftUiMscDemo
//
//  Created by Debashis Pal on 11/03/25.
//

import SwiftUI


@available(iOS 17.0, *)
@Observable
class AppState {
    var isOn: Bool = false
}


@available(iOS 17.0, *)
struct LightView : View {
    @Environment(AppState.self) private var appState: AppState
    var body: some View {
       
           
        VStack {
            Spacer()
            HStack {
                Text(appState.isOn ? "On" : "Off")
              
                Toggle("isOn" , isOn: Binding(
                    get: { appState.isOn },
                    set: { appState.isOn = $0 }
                )).labelsHidden()
                    
                    Image(systemName: "lightbulb")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 40)
                        .foregroundStyle(appState.isOn ? .yellow : .black)
                        .foregroundColor(.black)
                        .padding(.init(top: 0, leading: 60, bottom: 0, trailing: 0))
                }
            .padding()
        }
            

    }
    
    
}
@available(iOS 17.0, *)
struct StateBindingObservableDemo: View {
    var body: some View {
        LightView()
        
    }
}
@available(iOS 17.0, *)
#Preview {
    StateBindingObservableDemo().environment(AppState())
   
}
