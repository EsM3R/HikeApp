//
//  CustomLabeledContenView.swift
//  HIkeApp
//
//  Created by Mehmet Vural on 16.03.2024.
//

import SwiftUI

struct CustomLabeledContenView: View {
    
    let rowContent : String
    let rowLabel : String
    let backgroundColor : Color
    let icon : String
    
    
    var body: some View {
        
        LabeledContent {
            
            Text(rowLabel)
                .foregroundStyle(.primary)
                .fontWeight(.heavy)
            
        } label: {
            HStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 5)
                        .fill(backgroundColor)
                        .frame(width: 30,height: 30)
                    Image(systemName: icon)
                        .foregroundStyle(Color.white)
                }
                Text(rowContent)
                
            }
            
        }


    }
}
