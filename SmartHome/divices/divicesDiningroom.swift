//
//  smartDivices.swift
//  SmartHome
//
//  Created by Jesús Francisco Leyva Juárez on 26/08/21.
//

import SwiftUI

struct divicesDiningroom: View {
    var body: some View {
        ZStack {
            Color.black.opacity(0.06)
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .center, spacing: 30) {
                Text("Dining Room")
                    .font(.system(size: 30))
                    //.font(.title)
                    .fontWeight(.bold)
                    
                VStack(alignment: .leading, spacing: 20){
                Text("Smart Divices")
                    .fontWeight(.regular)
                    .font(.system(size: 20))
                    .padding(.vertical, 25)
                    VStack (spacing: 35){
                        HStack(spacing: 35){
                            lightsD()
                            socketsD()
                        }
                        HStack(spacing: 35){
                            speakersD()
                            fanD()
                        }
                    }
                    Spacer()
                }
            }
        }
    }
}

struct smartDivices_Previews: PreviewProvider {
    static var previews: some View {
        divicesDiningroom()
    }
}

//SMART DIVICES
struct lightsD: View {
    @State var sheetLD : Bool = false
    @AppStorage("lightSwD") var lightSwD: Bool = false
 
    var body: some View {
        
        ZStack{
            Rectangle()
                .frame(width: 150, height: 200)
                .cornerRadius(30)
                .foregroundColor(lightSwD ? .black: .white)
            
            HStack(alignment: .bottom) {
                
                VStack(alignment: .leading, spacing: 40){
                    Image(lightSwD ? "lightB" : "light")
                        .resizable()
                        .frame(width: 39, height: 43)
                    Button(action: {
                        sheetLD.toggle()
                    }) {
                        Text("Smart \nLight")
                            .fontWeight(.semibold)
                    }
                    
                }
                Toggle(isOn: $lightSwD) {
                    
                }
                .rotationEffect(.degrees(-90))
            }
            .padding(.horizontal, 10)
            .foregroundColor(lightSwD ? .white : .black)
            NavigationLink("", destination: smartLightD(), isActive: $sheetLD)
        }.frame(width: 140, height: 180, alignment: .leading)
        
    }
}
struct socketsD: View {
    @State var sheetSD : Bool = false
    @AppStorage("socketSwD") var socketSwD: Bool = false
    var body: some View {
        
        ZStack{
            Rectangle()
                .frame(width: 150, height: 200)
                .cornerRadius(30)
                .foregroundColor(socketSwD ? .black: .white)
            
            HStack(alignment: .bottom) {
                
                VStack(alignment: .leading, spacing: 40){
                    Image(socketSwD ? "socketB" : "socket")
                        .resizable()
                        .frame(width: 39, height: 43)
                    Button(action: {
                        sheetSD.toggle()
                    }) {
                        Text("Smart \nSocket")
                            .fontWeight(.semibold)
                    }
                    
                }
                Toggle(isOn: $socketSwD) {
                    
                }
                .rotationEffect(.degrees(-90))
            }
            .padding(.horizontal, 10)
            .foregroundColor(socketSwD ? .white : .black)
            .sheet(isPresented: $sheetSD) {
                ZStack {
                    Color.black.opacity(0.06)
                        .edgesIgnoringSafeArea(.all)
                    VStack(alignment:.center, spacing: 80 ) {
                        Text("Smart Socket")
                            .font(.title)
                            .bold()
                        // divicesKitchen()
                    }
                }
            }
        }.frame(width: 140, height: 180, alignment: .leading)
        
    }
}
struct speakersD: View {
    @State var sheetSpD : Bool = false
    @AppStorage("speakerSwD") var speakerSwD: Bool = false
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 150, height: 200)
                .cornerRadius(30)
                .foregroundColor(speakerSwD ? .black: .white)
            HStack(alignment: .bottom) {
                VStack(alignment: .leading, spacing: 40){
                    Image(speakerSwD ? "speakerB" : "speaker")
                        .resizable()
                        .frame(width: 39, height: 43)
                    Button(action: {
                        sheetSpD.toggle()
                    }) {
                        Text("Smart \nSpeaker")
                            .fontWeight(.semibold)
                    }
                    
                }
                Toggle(isOn: $speakerSwD) {
                    
                }
                .rotationEffect(.degrees(-90))
            }
            .padding(.horizontal, 5)
            .foregroundColor(speakerSwD ? .white : .black)
            .sheet(isPresented: $sheetSpD) {
                ZStack {
                    Color.black.opacity(0.06)
                        .edgesIgnoringSafeArea(.all)
                    VStack(alignment:.center, spacing: 80 ) {
                        Text("Smart Speaker")
                            .font(.title)
                            .bold()
                        // divicesKitchen()
                    }
                }
            }
        }.frame(width: 140, height: 180, alignment: .leading)
    }
}

struct fanD: View {
    @State var sheetFD : Bool = false
    @AppStorage("fanSwD") var fanSwD: Bool = false
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 150, height: 200)
                .cornerRadius(30)
                .foregroundColor(fanSwD ? .black: .white)
            HStack(alignment: .bottom) {
                VStack(alignment: .leading, spacing: 40){
                    Image(fanSwD ? "ventiladorB" : "ventilador")
                        .resizable()
                        .frame(width: 39, height: 43)
                    Button(action: {
                        sheetFD.toggle()
                    }) {
                        Text("Smart \nFan")
                            .fontWeight(.semibold)
                    }
                    
                }
                Toggle(isOn: $fanSwD) {
                    
                }
                .rotationEffect(.degrees(-90))
            }
            .padding(.horizontal, 5)
            .foregroundColor(fanSwD ? .white : .black)
            .sheet(isPresented: $sheetFD) {
                ZStack {
                    Color.black.opacity(0.06)
                        .edgesIgnoringSafeArea(.all)
                    VStack(alignment:.center, spacing: 80 ) {
                        Text("Smart Fan")
                            .font(.title)
                            .bold()
                        // divicesKitchen()
                    }
                }
            }
        }.frame(width: 140, height: 180, alignment: .leading)
    }
}


