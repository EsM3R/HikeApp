//
//  CardHeaderView.swift
//  HIkeApp
//
//  Created by Mehmet Vural on 11.03.2024.
//

import SwiftUI

struct CardHeaderView: View {
    
    @State private var isShowSheet : Bool = false
    
    private let title : String = "Hiking"
    private let subTitle : String = "Fun and enjoyable outdoor activity for friends and families"
    
    var body: some View {
        VStack (alignment : .leading) {
            HStack {
                Text(title)
                    .font(.system(size: 52))
                    .fontWeight(.black)
                    .foregroundStyle(
                        LinearGradient(colors: [Color.colorGrayLight ,
                                                Color.colorGrayMedium],
                                       startPoint: .top,
                                       endPoint: .bottom)
                    )
                Spacer()
                Button(action: {
                    isShowSheet.toggle()
                }, label: {
                    CustomButtonView()
                })
                .sheet(isPresented: $isShowSheet, content: {
                    SettingsView()
                        .presentationDragIndicator(.visible)
                        .presentationDetents([.medium , .large])
                        
                })
                
            }
            Text(subTitle)
                .italic()
                .multilineTextAlignment(.leading)
            
            
        }
        .padding(.horizontal , 20)
    }
}


#Preview {
    CardHeaderView()
}
