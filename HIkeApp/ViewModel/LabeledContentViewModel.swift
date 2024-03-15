//
//  LabeledContentViewModel.swift
//  HIkeApp
//
//  Created by Mehmet Vural on 16.03.2024.
//

import SwiftUI


enum LabeledContentViewModel : String , CaseIterable{


    case application
    case compatibility
    case technology
    case version
    case developer
    case designer
    
    
    var rowContent : String{
        switch self{
        case .application:
            return self.rawValue.capitalized
        case .compatibility:
            return self.rawValue.capitalized
        case .technology:
            return self.rawValue.capitalized
        case .version:
            return self.rawValue.capitalized
        case .developer:
            return self.rawValue.capitalized
        case .designer:
            return self.rawValue.capitalized
        }
    }
    
    var rowLabel : String{
        switch self{
        case .application:
            return "Hike"
        case .compatibility:
            return "IPadOS,IOS"
        case .technology:
            return "Swift UI"
        case .version:
            return "1.0"
        case .developer:
            return "Mehmet Vural"
        case .designer:
            return "Robert Petras"
        }
    }
    var backgroundColor : Color {
        switch self{
        case .application:
            return .blue
        case .compatibility:
            return .red
        case .technology:
            return .orange
        case .version:
            return .purple
        case .developer:
            return .mint
        case .designer:
            return .pink
        }
    }
    
    var icon : String{
        switch self{
        case .application:
            return "apps.iphone"
        case .compatibility:
            return "info.circle"
        case .technology:
            return "swift"
        case .version:
            return "gear"
        case .developer:
            return "ellipsis.curlybraces"
        case .designer:
            return "paintpalette"
        }
    }
    
}
