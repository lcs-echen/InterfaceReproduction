//
//  ListItem.swift
//  InterfaceReproduction
//
//  Created by Evelyn Chen on 2022-11-17.
//

import SwiftUI

struct ListItem: View {
    let name: String
    let km: String
    let imageName: String
    let date: String
    var body: some View {
        HStack {
            HStack(spacing: 0){
                SymbolView(imageName: imageName)
                    .padding(5)
                VStack(alignment: .leading) {
                    Text(name)
                        .foregroundColor(.white)
                        .font(.title3)
                    HStack (alignment: .firstTextBaseline, spacing: 0){
                        Text(km)
                            .font(.largeTitle)
                            .foregroundColor(Color("YellowGreen"))
                        Text("KM")
                            .font(.title)
                            .foregroundColor(Color("YellowGreen"))
                        Spacer()
                        Text(date)
                            .foregroundColor(.gray)
                            .font(.footnote)
                    }
                    
                }
                .padding([.leading,.trailing], 8)
                
            }
            .padding([.leading,.trailing], 5)
            .frame(width: 310, height: 93)
            .background(RoundedRectangle(cornerRadius: 15)
                .foregroundColor(Color("DarkGray")))
            
            VStack {
                RoundedRectangleButton(buttonColour: "LighterGray", label: "?")
            }
            
        }
        .listRowInsets(EdgeInsets(top: 0, leading: 7, bottom: 8, trailing: 0))
    }
}

struct ListItem_Previews: PreviewProvider {
    static var previews: some View {
        ListItem(name: "Outdoor Walk", km: "1.18", imageName: "figure.walk.circle.fill", date: "Yesterday")
            .preferredColorScheme(.dark)
    }
}

