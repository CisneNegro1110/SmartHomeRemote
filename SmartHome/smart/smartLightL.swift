//
//  smartLightL.swift
//  SmartHome
//
//  Created by Jesús Francisco Leyva Juárez on 27/08/21.
//

import SwiftUI

struct smartLightL: View {
    @AppStorage("brightnessL") var brightnessL = 0.0
    @AppStorage("lightSwL") var lightSwL: Bool = false
    @State private var currentDateStart = Date()
    @State private var currentDateEnd = Date()
    var body: some View {
        ZStack {
            Color.black.opacity(0.06)
                .edgesIgnoringSafeArea(.all)
            VStack{
                HStack {
                   // Spacer()
                    Text("Light ")
                        .font(.title)
                        .fontWeight(.semibold)
                        .padding(.horizontal)
                        .offset(x: 155)
                    Toggle(isOn: $lightSwL){}
                        .padding()
                }
                VStack {
                    HStack {
                        Image(systemName: "sun.min")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30, alignment: .center)
                            .rotationEffect(.degrees(-180))
                        Slider(value: $brightnessL, in: 0...100, step: 1)
                            .accentColor(Color.black)
                        Image(systemName: "sun.max")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30, alignment: .topLeading)
                            .rotationEffect(.degrees(-180))
                        
                    } .frame(width: 320, height: 380)
                    .foregroundColor(Color.black)
                    .padding()
                    .rotationEffect(.degrees(-90))
                    .offset(x: -155)
                    let bInt = Int(brightnessL)
                    VStack{
                    Text("\(bInt) %")
                        .fontWeight(.bold)
                        .font(.title)
                    Text("Brightness")
                        .padding(.vertical)
                        .offset(y: -20)
                    }
                    .offset(y: -244)
                    .offset(x: -30)
                    
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
                    .offset(y: -100)
                }
                
                Spacer()
            }
            
        }
    }
}

struct smartLightL_Previews: PreviewProvider {
    static var previews: some View {
        smartLightL()
    }
}
