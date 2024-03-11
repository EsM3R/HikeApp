//
//  CardView.swift
//  HIkeApp
//
//  Created by Mehmet Vural on 11.03.2024.
//

import SwiftUI

struct CardView: View {
    
    var body: some View {
        ZStack {
           CustomBackgroundColor()
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
                
                Image("image-1")
                    .resizable()
                    .scaledToFit()

            }
        }
        .frame(width: 320 , height: 570)
    }
}

#Preview {
    CardView()
}
