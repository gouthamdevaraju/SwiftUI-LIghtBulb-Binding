//
//  ContentView.swift
//  SwiftUI-LightBulb-Binding
//
//  Created by Goutham Devaraju on 30/10/24.
//

import SwiftUI

struct LightBulb: View {
    
    @Binding var turnOn: Bool
    
    var body: some View {
        VStack {
            Image(systemName: "lightbulb")
                .font(.largeTitle)
                .foregroundStyle(turnOn ? .red : .white)
            Button("Toggle") {
                turnOn.toggle()
            }
        }
        .padding()
    }
}

struct ContentView: View {
    
    @State private var turnOnRef: Bool = false
    
    var body: some View {
        VStack {
            LightBulb(turnOn: $turnOnRef)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(turnOnRef ? .yellow : .black)
    }
}

#Preview {
    ContentView()
}
