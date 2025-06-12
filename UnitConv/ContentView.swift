//
//  ContentView.swift
//  UnitConv
//
//  Created by Vishesh S Rajput on 27/05/25.
//

import SwiftUI

struct ContentView: View {
    
    let inputUnits = ["Meters", "KM", "Feet", "Yard", "Miles"]
    let outputUnits = ["Meters", "KM", "Feet", "Yard", "Miles"]
    
    @State private var selectedInput = "Meters"
    @State private var selectedOutput = "Meters"
    @State private var inputValue: Double = 0.0
    @FocusState private var inputFocused: Bool
    
    var computedOutput : Double {
        
        var outputValue: Double = 0.0
        
        if selectedInput == "Meters" {
            let input = Measurement(value: inputValue, unit: UnitLength.meters)
            if selectedOutput == "Meters" {
                outputValue = inputValue
            } else if selectedOutput == "KM" {
                outputValue = input.converted(to: .kilometers).value
            } else if selectedOutput == "Feet" {
                outputValue = input.converted(to: .feet).value
            } else if selectedOutput == "Yard" {
                outputValue = input.converted(to: .yards).value
            } else if selectedOutput == "Miles" {
                outputValue = input.converted(to: .miles).value
            }
        } else if selectedInput == "KM" {
            let input = Measurement(value: inputValue, unit: UnitLength.kilometers)
            if selectedOutput == "Meters" {
                outputValue = input.converted(to: .meters).value
            } else if selectedOutput == "KM" {
                outputValue = inputValue
            } else if selectedOutput == "Feet" {
                outputValue = input.converted(to: .feet).value
            } else if selectedOutput == "Yard" {
                outputValue = input.converted(to: .yards).value
            } else if selectedOutput == "Miles" {
                outputValue = input.converted(to: .miles).value
            }
        } else if selectedInput == "Feet" {
            let input = Measurement(value: inputValue, unit: UnitLength.feet)
            if selectedOutput == "Meters" {
                outputValue = input.converted(to: .meters).value
            } else if selectedOutput == "KM" {
                outputValue = input.converted(to: .kilometers).value
            } else if selectedOutput == "Feet" {
                outputValue = inputValue
            } else if selectedOutput == "Yard" {
                outputValue = input.converted(to: .yards).value
            } else if selectedOutput == "Miles" {
                outputValue = input.converted(to: .miles).value
            }
        } else if selectedInput == "Yard" {
            let input = Measurement(value: inputValue, unit: UnitLength.yards)
            if selectedOutput == "Meters" {
                outputValue = input.converted(to: .meters).value
            } else if selectedOutput == "KM" {
                outputValue = input.converted(to: .kilometers).value
            } else if selectedOutput == "Feet" {
                outputValue = input.converted(to: .feet).value
            } else if selectedOutput == "Yard" {
                outputValue = inputValue
            } else if selectedOutput == "Miles" {
                outputValue = input.converted(to: .miles).value
            }
        } else if selectedInput == "Miles" {
            let input = Measurement(value: inputValue, unit: UnitLength.miles)
            if selectedOutput == "Meters" {
                outputValue = input.converted(to: .meters).value
            } else if selectedOutput == "KM" {
                outputValue = input.converted(to: .kilometers).value
            } else if selectedOutput == "Feet" {
                outputValue = input.converted(to: .feet).value
            } else if selectedOutput == "Yard" {
                outputValue = input.converted(to: .yards).value
            } else if selectedOutput == "Miles" {
                outputValue = inputValue
            }
        }
        
        return outputValue
        
    }
    
    var body: some View {
        
        NavigationStack {
            
            Form {
                
                Section("Enter your input") {
                    TextField("input value", value: $inputValue, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($inputFocused)
                }
                
                Section("Select your input unit") {
                    Picker("Select your preferred unit", selection: $selectedInput) {
                        ForEach(inputUnits, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                
                Section("Select your output unit") {
                    Picker("Select your preferred unit", selection: $selectedOutput) {
                        ForEach(outputUnits, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                
                Section("Computed output to \(selectedOutput)") {
                    Text(computedOutput.formatted())
                }
                
            }
            .navigationTitle("Unit Conversion")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                if inputFocused {
                    Button("Done") {
                        inputFocused = false
                    }
                }
            }
            
        }
        
        VStack{
            
            HStack {
                Image(systemName: "m.square")
                    .imageScale(.large)
                    .foregroundStyle(.red)
                Image(systemName: "k.square")
                    .imageScale(.large)
                    .foregroundStyle(.teal)
                Image(systemName: "f.square")
                    .imageScale(.large)
                    .foregroundStyle(.blue)
                Image(systemName: "y.square")
                    .imageScale(.large)
                    .foregroundStyle(.purple)
                Image(systemName: "m.square")
                    .imageScale(.large)
                    .foregroundStyle(.yellow)
            }
            .padding()
            
            Text("Bridging the Gap—One Unit at a Time.")
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
