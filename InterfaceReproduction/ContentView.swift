//
//  ContentView.swift
//  InterfaceReproduction
//
//  Created by Evelyn Chen on 2022-11-17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack (alignment: .leading) {
                HStack {
                    Text("Select")
                    Spacer()
                }
                .border(Color.red)
                Text("Workouts")
                
                Spacer()
                
                List {

                    Text("2")
                }

            }
        }
        .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabView (selection: Binding.constant(1)){
            
            ContentView()
                .tabItem {
                    Image(systemName: "figure.mixed.cardio")
                    Text("Workouts")
                    
                }
                .tag(1)
            
            
            Text("Shoes")
                .tabItem {
                    Image(systemName: "shoeprints.fill")
                    Text("Shoes")
                }
                .tag(2)
            
            
            Text("Settings")
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                    
                }
                .tag(3)
        }
        .accentColor(.green)
        .preferredColorScheme(.dark)
    }
}
