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
                VStack (alignment: .leading){
                    HStack {
                        Text("Select")
                            .foregroundColor(Color("YellowGreen"))
                            .font(.title2)
                        Spacer()
                    }
                    
                        Text("Workouts")
                            .fontWeight(.bold)
                            .font(.largeTitle)
                            .padding(.top, 2)

                    

                }
                .padding(10)
                
                Spacer(minLength: 55)
                
                Text("November 2022")
                    .fontWeight(.bold)
                    .font(.title2)
                    .padding(.leading, 10)
                    .padding(.bottom, 0)
                
                
                List {
                    ListItem(name: "Outdoor Walk", km: "1.18", imageName: "figure.walk.circle.fill", date: "Yesterday")
                    ListItem(name: "Outdoor Walk", km: "1.29", imageName: "figure.walk.circle.fill", date: "Yesterday")
                    ListItem(name: "Outdoor Run", km: "14.47", imageName: "figure.run.circle.fill", date: "2022-11-13")
                    ListItem(name: "Outdoor Walk", km: "1.74", imageName: "figure.walk.circle.fill", date: "2022-11-13")
                    ListItem(name: "Outdoor Run", km: "8.60", imageName: "figure.run.circle.fill", date: "2022-11-12")
                    ListItem(name: "Outdoor Walk", km: "1.80", imageName: "figure.walk.circle.fill", date: "2022-11-11")
                    
                }
                .listStyle(.plain)
            }
        }
        
        
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
        .accentColor(Color("YellowGreen"))
        .preferredColorScheme(.dark)
    }
}
