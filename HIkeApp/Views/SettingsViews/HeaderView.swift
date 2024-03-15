//
//  HeaderView.swift
//  HIkeApp
//
//  Created by Mehmet Vural on 16.03.2024.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack{
            Spacer()
           
            Image(systemName: "laurel.leading")
                .font(.system(size: 80))
            
            VStack(spacing: -10.0) {
                Text("Hike")
                    .font(.system(size: 60))
                    .fontWeight(.black)
                
                Text("Editor's Choice")
                    .fontWeight(.medium)
            }
            
            
            Image(systemName: "laurel.trailing")
                .font(.system(size: 80))
            
            Spacer()
        }
        .padding(.top)
        .foregroundStyle(LinearGradient(colors: [.colorGreenLight,
                                                 .colorGreenMedium,
                                                 .colorGreenDark],
                                        startPoint: .top,
                                        endPoint: .bottom))
        
    }
}

#Preview {
    HeaderView()
}
