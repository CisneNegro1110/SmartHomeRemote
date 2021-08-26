//
//  divicesBedroom.swift
//  SmartHome
//
//  Created by Jesús Francisco Leyva Juárez on 26/08/21.
//

import SwiftUI

struct divicesBedroom: View {
    var body: some View {
        
        ZStack {
            Color.black.opacity(0.06)
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .center, spacing: 30){
                Text("Bed Room")
                    .font(.system(size: 30))
                    .fontWeight(.bold)
                VStack(alignment: .leading, spacing: 20){
                    Text("Smart Divices")
                        .fontWeight(.regular)
                        .font(.system(size: 20))
                        .padding(.vertical, 25)
                    VStack (spacing: 35){
                        HStack(spacing: 35){
                            lightsB()
                            socketsB()
                        }
                        HStack(spacing: 35){
                            speakersB()
                            fanB()
                        }
                    }
                    Spacer()
                }
            }
        }
    }
}

struct divicesBedroom_Previews: PreviewProvider {
    static var previews: some View {
        divicesBedroom()
    }
}

//SMART DIVICES
struct lightsB: View {
    @State var sheetL : Bool = false
    @AppStorage("lightSwB") var lightSwB: Bool = false
    
    var body: some View {
        
        ZStack{
            Rectangle()
                .frame(width: 150, height: 200)
                .cornerRadius(30)
                .foregroundColor(lightSwB ? .black: .white)
            
            HStack(alignment: .bottom) {
                
                VStack(alignment: .leading, spacing: 40){
                    Image(lightSwB ? "lightB" : "light")
                        .resizable()
                        .frame(width: 39, height: 43)
                    Button(action: {
                        sheetL.toggle()
                    }) {
                        Text("Smart \nLight")
                            .fontWeight(.semibold)
                    }
                }
                Toggle(isOn: $lightSwB) {
                    
                }
                .rotationEffect(.degrees(-90))
            }
            .padding(.horizontal, 10)
            .foregroundColor(lightSwB ? .white : .black)
            .sheet(isPresented: $sheetL) {
                ZStack {
                    Color.black.opacity(0.06)
                        .edgesIgnoringSafeArea(.all)
                    VStack(alignment:.center, spacing: 80 ) {
                        Text("Smart Light")
                            .font(.title)
                            .bold()
                        // divicesKitchen()
                    }
                }
            }
            
        }.frame(width: 140, height: 180, alignment: .leading)
        
    }
}
struct socketsB: View {
    @State var sheetS : Bool = false
    @AppStorage("socketSwB") var socketSwB: Bool = false
    var body: some View {
        
        ZStack{
            Rectangle()
                .frame(width: 150, height: 200)
                .cornerRadius(30)
                .foregroundColor(socketSwB ? .black: .white)
            
            HStack(alignment: .bottom) {
                
                VStack(alignment: .leading, spacing: 40){
                    Image(socketSwB ? "socketB" : "socket")
                        .resizable()
                        .frame(width: 39, height: 43)
                    Button(action: {
                        sheetS.toggle()
                    }) {
                        Text("Smart \nSocket")
                            .fontWeight(.semibold)
                    }
                    
                    
                }
                Toggle(isOn: $socketSwB) {
                    
                }
                .rotationEffect(.degrees(-90))
            }
            .padding(.horizontal, 10)
            .foregroundColor(socketSwB ? .white : .black)
            .sheet(isPresented: $sheetS) {
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
struct speakersB: View {
    @State var sheetSp : Bool = false
    @AppStorage("lspeakerSwB") var speakerSwB: Bool = false
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 150, height: 200)
                .cornerRadius(30)
                .foregroundColor(speakerSwB ? .black: .white)
            HStack(alignment: .bottom) {
                VStack(alignment: .leading, spacing: 40){
                    Image(speakerSwB ? "speakerB" : "speaker")
                        .resizable()
                        .frame(width: 39, height: 43)
                    Button(action: {
                        sheetSp.toggle()
                    }) {
                        Text("Smart \nSpeaker")
                            .fontWeight(.semibold)
                    }
                    
                }
                Toggle(isOn: $speakerSwB) {
                    
                }
                .rotationEffect(.degrees(-90))
            }
            .padding(.horizontal, 5)
            .foregroundColor(speakerSwB ? .white : .black)
            .sheet(isPresented: $sheetSp) {
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

struct fanB: View {
    @State var sheetF : Bool = false
    @AppStorage("fanSwB") var fanSwB: Bool = false
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 150, height: 200)
                .cornerRadius(30)
                .foregroundColor(fanSwB ? .black: .white)
            HStack(alignment: .bottom) {
                VStack(alignment: .leading, spacing: 40){
                    Image(fanSwB ? "ventiladorB" : "ventilador")
                        .resizable()
                        .frame(width: 39, height: 43)
                    Button(action: {
                        sheetF.toggle()
                    }) {
                        Text("Smart \nFan")
                            .fontWeight(.semibold)
                    }
                }
                Toggle(isOn: $fanSwB) {
                    
                }
                .rotationEffect(.degrees(-90))
            }
            .padding(.horizontal, 5)
            .foregroundColor(fanSwB ? .white : .black)
            .sheet(isPresented: $sheetF) {
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

