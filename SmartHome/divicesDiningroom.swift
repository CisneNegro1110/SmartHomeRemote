//
//  smartDivices.swift
//  SmartHome
//
//  Created by Jesús Francisco Leyva Juárez on 26/08/21.
//

import SwiftUI

struct divicesDiningroom: View {
    var body: some View {
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
   // @State var sw : Bool = false
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
                    Text("Smart \nLight")
                        .fontWeight(.semibold)
                }
                Toggle(isOn: $lightSwD) {
                    
                }
                .rotationEffect(.degrees(-90))
            }
            .padding(.horizontal, 10)
            .foregroundColor(lightSwD ? .white : .black)
        }.frame(width: 140, height: 180, alignment: .leading)
        
    }
}
struct socketsD: View {
   // @State var sw : Bool = false
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
                    
                    Text("Smart \nSocket")
                        .fontWeight(.semibold)
                }
                Toggle(isOn: $socketSwD) {
                    
                }
                .rotationEffect(.degrees(-90))
            }
            .padding(.horizontal, 10)
            .foregroundColor(socketSwD ? .white : .black)
        }.frame(width: 140, height: 180, alignment: .leading)
        
    }
}
struct speakersD: View {
   // @State var sw : Bool = false
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
                    Text("Smart \nSpeaker")
                        .fontWeight(.semibold)
                }
                Toggle(isOn: $speakerSwD) {
                    
                }
                .rotationEffect(.degrees(-90))
            }
            .padding(.horizontal, 5)
            .foregroundColor(speakerSwD ? .white : .black)
        }.frame(width: 140, height: 180, alignment: .leading)
    }
}

struct fanD: View {
   // @State var sw : Bool = false
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
                    Text("Smart \nFan")
                        .fontWeight(.semibold)
                }
                Toggle(isOn: $fanSwD) {
                    
                }
                .rotationEffect(.degrees(-90))
            }
            .padding(.horizontal, 5)
            .foregroundColor(fanSwD ? .white : .black)
        }.frame(width: 140, height: 180, alignment: .leading)
    }
}


