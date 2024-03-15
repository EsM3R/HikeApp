//
//  ListView.swift
//  HIkeApp
//
//  Created by Mehmet Vural on 16.03.2024.
//

import SwiftUI

struct ListView: View {

    var body: some View {
        List{
            Section{
                HeaderView()
                SubHeaderView()
            }
            .listRowSeparator(.hidden)
            
            Section {
                ScrollView(.horizontal ,showsIndicators: false) {
                    HStack{
                        ForEach(alternateAppIcons, id: \.self){icon in
                            Image("\(icon)-Preview")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80 , height: 80)
                                .clipShape(RoundedRectangle(cornerRadius: 16))
                        }
                        
                    }
                    .padding()
                }
                Text("Choose your favourite app icon from the collection above.")
                    .multilineTextAlignment(.center)
                    .font(.footnote)
                    .frame(maxWidth: .infinity)
                    .padding(5)
            } header: {
                Text("Alternate Icons".uppercased())
            }
            .listRowSeparator(.hidden)

            
            Section {
                ForEach(LabeledContentViewModel.allCases , id: \.self) { label in
                    CustomLabeledContenView(rowContent: label.rowContent,
                                            rowLabel: label.rowLabel,
                                            backgroundColor: label.backgroundColor,
                                            icon: label.icon)
                }
            } header: {
                Text("About the app".uppercased())
            } footer: {
                HStack {
                    Spacer()
                    Text("Copyright @ All right reserved")
                    Spacer()
                }
            }

           
        }
    }
}

#Preview {
    ListView()
}
