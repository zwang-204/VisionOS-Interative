//
//  ModuleCard.swift
//  Creating 3D Shapes
//
//  Created by 王梓同 on 10/29/24.
//  Copyright © 2024 Apple. All rights reserved.
//


/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
A card that displays a navigation destination.
*/

import SwiftUI

/// A card that displays a navigation destination.
struct ModuleCard: View {
    @Environment(\.openWindow) var openWindow
    
    var module: Module

    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 4) {
                HStack(alignment: .top){
                    Image(uiImage: UIImage(named: module.imageName)!)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 256, height: 256)
                        .cornerRadius(25)
                        .padding(20)
                    VStack(alignment: .leading, spacing: 10) {
                        Text(module.heading)
                            .font(.largeTitle)
                        Text(module.abstract)
                        Button{
                            openWindow(id: module.volumeName)
                        } label: {
                            HStack {
                                Text("View this " + module.name)
                                    .foregroundColor(.white)
                                    
                            }
                        }
                        .background(Color.blue)
                        .cornerRadius(25)
                        .shadow(radius: 5)
                        .padding(20)
                    }
                }
            }
            .padding(.vertical, 30)
        }
        .buttonStyle(.borderless)
        .buttonBorderShape(.roundedRectangle(radius: 20))
        .frame(minWidth: 200, maxWidth: 900)
    }
}

#Preview {
    HStack {
        ModuleCard(module: .mug)
    }
    .padding()
    .glassBackgroundEffect()
}
