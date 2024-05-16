//
//  AddFoodView.swift
//  Colories
//
//  Created by Madina Amankeldinova on 16.05.2024.
//

import SwiftUI

struct AddFoodView: View {
    @Environment (\.managedObjectContext) var managedObjectContext
    @Environment(\.dismiss) var dismiss
    
    @State private var name = ""
    @State private var calories = 0.0
    
    var body: some View {
        Form {
            TextField("Food name", text: $name)
            
            VStack {
                Text("Calories: \(Int(calories))")
                Slider(value: $calories, in: 0...1500, step: 10)
                
            }
            .padding()
            HStack {
                Spacer()
                Button("Submit") {
                    DataController().addFood(name: name, calories: calories, context: managedObjectContext)
                    dismiss()
                }
                Spacer()
            }
        }
    }
}

#Preview {
    AddFoodView()
}
