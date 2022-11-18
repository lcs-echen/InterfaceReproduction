//
//  SymbolView.swift
//  InterfaceReproduction
//
//  Created by Evelyn Chen on 2022-11-18.
//

import SwiftUI

struct SymbolView: View {
    let imageName:String
    var body: some View {
        ZStack (alignment: .center){
            Circle()
                .foregroundColor(Color("ImageGray"))
                .frame(width: 65, height: 65)
            Image(systemName: imageName)
                        .resizable()
                        .foregroundStyle(Color("YellowGreen"), Color("ImageGray"))
                        .frame(width: 45, height: 45, alignment: .center)
                        .symbolRenderingMode(.palette)
        }
        
    }
}

struct SymbolView_Previews: PreviewProvider {
    static var previews: some View {
        SymbolView(imageName: "figure.walk.circle.fill")
    }
}
