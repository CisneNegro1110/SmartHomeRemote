//
//  smartSocketK.swift
//  SmartHome
//
//  Created by Jesús Francisco Leyva Juárez on 27/08/21.
//

import SwiftUI

struct smartSocketK: View {
    @AppStorage("socketSwK") var socketSwK: Bool = false
    @State private var currentDateStart = Date()
    @State private var currentDateEnd = Date()
    var body: some View {
        ZStack {
            Color.black.opacity(0.06)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Socket")
                    .font(.title)
                    .fontWeight(.semibold)
                Toggle(isOn: $socketSwK){}
                Spacer()
                HStack(spacing: 15) {
                    Text("Start:")
                        .fontWeight(.semibold)
                    DatePicker("", selection: $currentDateStart, displayedComponents: .hourAndMinute)
                                .labelsHidden()
                    Text("End:")
                        .fontWeight(.semibold)
                    DatePicker("", selection: $currentDateEnd, displayedComponents: .hourAndMinute)
                                .labelsHidden()
                }
                Spacer()
            }
        }
    }
}

struct smartSocketK_Previews: PreviewProvider {
    static var previews: some View {
        smartSocketK()
    }
}
