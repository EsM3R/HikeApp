//
//  CardContentView.swift
//  HIkeApp
//
//  Created by Mehmet Vural on 11.03.2024.
//

import SwiftUI

struct CardContentView: View {
    
    let imageName : String
    
    var body: some View {
        ZStack{
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            Color.colorIndigoMedium ,
                            Color.colorSalmonLight],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing))
            
                .frame(width: 250 , height: 250 )
            
            Image(imageName)
                .resizable()
                .scaledToFit()
            
        }
    }
}
