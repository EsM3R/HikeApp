//
//  SubHeaderView.swift
//  HIkeApp
//
//  Created by Mehmet Vural on 16.03.2024.
//

import SwiftUI

struct SubHeaderView: View {
    var body: some View {
        VStack(spacing : 8){
            Text("Where can you find \nperfect tracks?")
                .font(.title2)
                .fontWeight(.heavy)
            Text("The hike which looks gorgeus in photo but is even better once you are actually  there. The bike that you hope to do again someday. \nFind the best day hikes in the app ")
                .font(.footnote)
                .italic()
            Text("Dust off the boats it's time for a walk")
                .fontWeight(.heavy)
                .foregroundStyle(.colorGreenMedium)
            
        }
        .multilineTextAlignment(.center)
        .padding(.bottom , 15)
        .frame(maxWidth: .infinity)
        
    
    }
}

#Preview {
    SubHeaderView()
}
