//
//  CardFooterView.swift
//  HIkeApp
//
//  Created by Mehmet Vural on 11.03.2024.
//

import SwiftUI

struct CardFooterView: View {
        
    @Binding var imageNumber : Int
    @Binding var randomNumber : Int


    func createRandomImage(){
        
        repeat{
            
            imageNumber =  Int.random(in: 1 ... 5 )
            print(imageNumber)
        }while(randomNumber == imageNumber)
        
        randomNumber = imageNumber
    }
    
    
    
    var body: some View {
        
        Button(action: {
            createRandomImage()
        }, label: {
            Text("Explore More")
                .font(.title2)
                .fontWeight(.heavy)
                .foregroundStyle(LinearGradient(
                    colors: [.colorGreenLight , .colorGreenMedium],
                    startPoint: .top,
                    endPoint: .bottom))
        })
        .buttonStyle(GradientButton())
    }
}
