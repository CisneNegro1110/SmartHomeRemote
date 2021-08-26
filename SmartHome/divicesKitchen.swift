//
//  divicesKitchen.swift
//  SmartHome
//
//  Created by Jesús Francisco Leyva Juárez on 26/08/21.
//

import SwiftUI

struct divicesKitchen: View {
    var body: some View {
        ZStack {
            Color.black.opacity(0.06)
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .center, spacing: 30) {
                Text("Kitchen")
                    .font(.system(size: 30))
                    .fontWeight(.bold)
                VStack(alignment: .leading, spacing: 20){
                Text("Smart Divices")
                    .fontWeight(.regular)
                    .font(.system(size: 20))
                    .padding(.vertical, 25)
                    VStack (spacing: 35){
                        HStack(spacing: 35){
                            lightsK()
                            socketsK()
                        }
                        HStack(spacing: 35){
                            speakersK()
                            fanK()
                        }
                    }
                Spacer()
                }
            }
        }
    }
}

struct divicesKitchen_Previews: PreviewProvider {
    static var previews: some View {
        divicesKitchen()
    }
}

//SMART DIVICES
struct lightsK: View {
    @State var sheetLK : Bool = false
    @AppStorage("lightSwK") var lightSwK: Bool = false
 
    var body: some View {
        
        ZStack{
            Rectangle()
                .frame(width: 150, height: 200)
                .cornerRadius(30)
                .foregroundColor(lightSwK ? .black: .white)
            
            HStack(alignment: .bottom) {
                
                VStack(alignment: .leading, spacing: 40){
                    Image(lightSwK ? "lightB" : "light")
                        .resizable()
                        .frame(width: 39, height: 43)
                    Button(action: {
                        sheetLK.toggle()
                    }) {
                        Text("Smart \nLight")
                            .fontWeight(.semibold)
                    }
                }
                Toggle(isOn: $lightSwK) {
                    
                }
                .rotationEffect(.degrees(-90))
            }
            .padding(.horizontal, 10)
            .foregroundColor(lightSwK ? .white : .black)
            .sheet(isPresented: $sheetLK) {
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
struct socketsK: View {
    @State var sheetSK : Bool = false
    @AppStorage("socketSwK") var socketSwK: Bool = false
    var body: some View {
        
        ZStack{
            Rectangle()
                .frame(width: 150, height: 200)
                .cornerRadius(30)
                .foregroundColor(socketSwK ? .black: .white)
            
            HStack(alignment: .bottom) {
                
                VStack(alignment: .leading, spacing: 40){
                    Image(socketSwK ? "socketB" : "socket")
                        .resizable()
                        .frame(width: 39, height: 43)
                    
                    Button(action: {
                        sheetSK.toggle()
                    }) {
                        Text("Smart \nSocket")
                            .fontWeight(.semibold)
                    }
                }
                Toggle(isOn: $socketSwK) {
                    
                }
                .rotationEffect(.degrees(-90))
            }
            .padding(.horizontal, 10)
            .foregroundColor(socketSwK ? .white : .black)
            .sheet(isPresented: $sheetSK) {
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
struct speakersK: View {
    @State var sheetSpK : Bool = false
    @AppStorage("lspeakerSwK") var speakerSwK: Bool = false
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 150, height: 200)
                .cornerRadius(30)
                .foregroundColor(speakerSwK ? .black: .white)
            HStack(alignment: .bottom) {
                VStack(alignment: .leading, spacing: 40){
                    Image(speakerSwK ? "speakerB" : "speaker")
                        .resizable()
                        .frame(width: 39, height: 43)
                    Button(action: {
                        sheetSpK.toggle()
                    }) {
                        Text("Smart \nSpeaker")
                            .fontWeight(.semibold)
                    }
                }
                Toggle(isOn: $speakerSwK) {
                    
                }
                .rotationEffect(.degrees(-90))
            }
            .padding(.horizontal, 5)
            .foregroundColor(speakerSwK ? .white : .black)
            .sheet(isPresented: $sheetSpK) {
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

struct fanK: View {
    @State var sheetFK : Bool = false
    @AppStorage("fanSwK") var fanSwK: Bool = false
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 150, height: 200)
                .cornerRadius(30)
                .foregroundColor(fanSwK ? .black: .white)
            HStack(alignment: .bottom) {
                VStack(alignment: .leading, spacing: 40){
                    Image(fanSwK ? "ventiladorB" : "ventilador")
                        .resizable()
                        .frame(width: 39, height: 43)
                    Button(action: {
                        sheetFK.toggle()
                    }) {
                        Text("Smart \nFan")
                            .fontWeight(.semibold)
                    }
                }
                Toggle(isOn: $fanSwK) {
                    
                }
                .rotationEffect(.degrees(-90))
            }
            .padding(.horizontal, 5)
            .foregroundColor(fanSwK ? .white : .black)
            .sheet(isPresented: $sheetFK) {
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

