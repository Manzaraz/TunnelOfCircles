//
//  ContentView.swift
//  TunnelOfCircles
//
//  Created by Christian Manzaraz on 02/05/2024.
//

import SwiftUI


struct ContentView: View {
    @State private var colors: [Color] = [ .cyan, .blue ]
    
    var body: some View {
        VStack {
            Grid {
                GridRow {
                    Text("Colors")
                    HStack {
                        ColorPicker("Color", selection: $colors[0])
                        ColorPicker("Color", selection: $colors[1])
                        Spacer()
                    }
                    .labelsHidden()
                }
            }
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
