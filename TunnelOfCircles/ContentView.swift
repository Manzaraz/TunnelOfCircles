//
//  ContentView.swift
//  TunnelOfCircles
//
//  Created by Christian Manzaraz on 02/05/2024.
//

import SwiftUI


struct ContentView: View {
    @State private var colors: [Color] = [ .cyan, .blue ]
    
    let mindiameter = 50.0
    let diameterChange = 70.0
    
    var body: some View {
        VStack {
            VStack {
                ZStack {
                    ForEach(0..<4) { index in
                        Circle()
                            .stroke(lineWidth: 30)
                            .foregroundStyle(colors[index % 2])
                            .frame(height: mindiameter + diameterChange * Double(index))
                    }
                }
            }
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
