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
                Image(systemName: imageName)
                    .resizable()
                    .foregroundColor(Color("YellowGreen"))
                    .frame(width: 60, height: 60, alignment: .center)
                    .padding(.leading)
                VStack(alignment: .leading) {
                    Text(name)
                        .foregroundColor(.white)
                        .font(.title3)
                    HStack (alignment: .firstTextBaseline, spacing: 0){
                        Text(km)
                            .font(.largeTitle)
                            .foregroundColor(Color("YellowGreen"))
                        Text("KM")
                            .font(.title2)
                            .foregroundColor(Color("YellowGreen"))
                        Spacer()
                        Text(date)
                            .foregroundColor(.gray)
                            .font(.footnote)
                    }
                    
                }
                .padding(7)
                
            }
            .frame(width: 280)
            
            
            VStack {
                RoundedRectangleButton(buttonColour: "Gray", label: "?", labelColor: .white)

                
            }
            
        }
    }
}

struct ListItem_Previews: PreviewProvider {
    static var previews: some View {
        ListItem(name: "Outdoor Walk", km: "1.18", imageName: "figure.walk.circle.fill", date: "Yesterday")
            .preferredColorScheme(.dark)
    }
}

