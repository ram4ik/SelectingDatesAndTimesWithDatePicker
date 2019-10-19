//
//  ContentView.swift
//  SelectingDatesAndTimesWithDatePicker
//
//  Created by ramil on 19.10.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var wakeUp = Date()
    var body: some View {
        
//        let now = Date()
//        let tomorrow = Date().addingTimeInterval(86400)
//        let range = now ... tomorrow
        
        VStack {
            
            Form {
                DatePicker("Please enter a date", selection: $wakeUp)
                    .padding()
            }
            DatePicker("Please enter a date", selection: $wakeUp, displayedComponents: .hourAndMinute)
                .labelsHidden()
            
            DatePicker("Please enter a date", selection: $wakeUp)
                .labelsHidden()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
