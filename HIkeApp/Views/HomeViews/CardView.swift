//
//  CardView.swift
//  HIkeApp
//
//  Created by Mehmet Vural on 11.03.2024.
//

import SwiftUI

struct CardView: View {
    
    @State private var imageNumber : Int = 1
    @State private var randomNumber : Int = 1
    

    
    
    var body: some View {
        
        ZStack {
            
           CustomBackgroundColor()
            
            VStack {
                CardHeaderView()
                CardContentView(imageName: "image-\(imageNumber)")
                CardFooterView(imageNumber: $imageNumber,
                               randomNumber: $randomNumber)
            }
        }
        .frame(width: 320 , height: 570)
    }
}

#Preview {
    CardView()
}


