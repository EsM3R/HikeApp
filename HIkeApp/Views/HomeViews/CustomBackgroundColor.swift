//
//  CustomBackgroundColor.swift
//  HIkeApp
//
//  Created by Mehmet Vural on 11.03.2024.
//

import SwiftUI

struct CustomBackgroundColor: View {
    
    let cornerRadius : CGFloat = 40

    var body: some View {
        ZStack{
            
            Color.colorGreenDark
                .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
                .offset(y: 12)
            
            
            Color.colorGreenLight
                .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
                .offset(y: 3)
                .opacity(0.85)

            LinearGradient(
                colors: [
                    Color.colorGreenLight,
                    Color.colorGreenMedium],
                startPoint: .top,
                endPoint: .bottom)
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
                
        }
        
        
    }
}

#Preview {
    CustomBackgroundColor()
}
