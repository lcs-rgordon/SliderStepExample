//
//  ContentView.swift
//  SliderStepExample
//
//  Created by Russell Gordon on 2023-01-22.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored properties
    @State var selectedNumber: Double = 0.0
    
    // MARK: Computed properties
    
    // Expresses the user interface
    var body: some View {
        VStack {
            
            Slider(value: $selectedNumber,
                   in: -50...50,
                   step: 0.1,
                   label: { Text("Number") },
                   minimumValueLabel: { Text("-50") },
                   maximumValueLabel: { Text("50") })
            
            Text("\(selectedNumber.formatted(.number.precision(.fractionLength(2))))")
                .font(.largeTitle)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
