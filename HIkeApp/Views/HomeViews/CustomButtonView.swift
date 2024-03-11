//
//  CustomButtonView.swift
//  HIkeApp
//
//  Created by Mehmet Vural on 11.03.2024.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack{
            Circle()
                .fill(
                    LinearGradient(colors: [Color.colorGreenLight ,
                                            Color.colorGreenMedium],
                                   startPoint: .top,
                                   endPoint: .bottom)
                )
            Circle()
                .stroke( LinearGradient(colors: [Color.colorGrayLight ,
                                                 Color.colorGrayMedium],
                                        startPoint: .top,
                                        endPoint: .bottom), lineWidth: 4)
            Image(systemName: "figure.hiking")
                .fontWeight(.bold)
                .font(.system(size: 30))
                .foregroundStyle( LinearGradient(colors: [Color.colorGrayLight ,
                                                          Color.colorGrayMedium],
                                                 startPoint: .top,
                                                 endPoint: .bottom))
        }
        .frame(width: 60 , height: 60)
    }
}

#Preview {
    CustomButtonView()
}
