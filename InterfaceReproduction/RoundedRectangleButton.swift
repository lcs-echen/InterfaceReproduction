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
        let labelColor: Color
        var body: some View {
            ZStack (alignment: .center){
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(Color(buttonColour))
                    .frame(width: 60, height: 60)
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.black)
                    .frame(width: 55, height: 55)
                RoundedRectangle(cornerRadius: 9)
                    .foregroundColor(Color(buttonColour))
                    .frame(width: 50, height: 50)
                Text(label)
                    .foregroundColor(labelColor)
                    .font(.title3)
                
                
            }
        }
}

struct RoundedRectangle_Previews: PreviewProvider {
    static var previews: some View {
        RoundedRectangleButton(buttonColour: "YellowGreen", label: "?", labelColor: .white)
    }
}
