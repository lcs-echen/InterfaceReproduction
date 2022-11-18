//
//  RoundedRectangle.swift
//  InterfaceReproduction
//
//  Created by Evelyn Chen on 2022-11-17.
//

import SwiftUI

struct RoundedRectangleButton: View {
        let buttonColour: String
        let label: String
        var body: some View {
            ZStack (alignment: .center){
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(Color(buttonColour))
                    .frame(width: 88, height: 95)
                RoundedRectangle(cornerRadius: 13)
                    .foregroundColor(.black)
                    .frame(width: 84, height: 90)
                RoundedRectangle(cornerRadius: 9)
                    .foregroundColor(Color(buttonColour))
                    .frame(width: 80, height: 86)
                Text(label)
                    .foregroundColor(Color("LightestGray"))
                    .font(.largeTitle)
                
                
            }
        }
}

struct RoundedRectangle_Previews: PreviewProvider {
    static var previews: some View {
        RoundedRectangleButton(buttonColour: "YellowGreen", label: "?")
    }
}
