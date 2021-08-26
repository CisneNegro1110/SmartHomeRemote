//
//  divicesBedroom.swift
//  SmartHome
//
//  Created by Jesús Francisco Leyva Juárez on 26/08/21.
//

import SwiftUI

struct divicesBedroom: View {
    var body: some View {
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
   // @State var sw : Bool = false
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
                    Text("Smart \nLight")
                        .fontWeight(.semibold)
                }
                Toggle(isOn: $lightSwB) {
                    
                }
                .rotationEffect(.degrees(-90))
            }
            .padding(.horizontal, 10)
            .foregroundColor(lightSwB ? .white : .black)
        }.frame(width: 140, height: 180, alignment: .leading)
        
    }
}
struct socketsB: View {
   // @State var sw : Bool = false
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
                    
                    Text("Smart \nSocket")
                        .fontWeight(.semibold)
                }
                Toggle(isOn: $socketSwB) {
                    
                }
                .rotationEffect(.degrees(-90))
            }
            .padding(.horizontal, 10)
            .foregroundColor(socketSwB ? .white : .black)
        }.frame(width: 140, height: 180, alignment: .leading)
        
    }
}
struct speakersB: View {
   // @State var sw : Bool = false
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
                    Text("Smart \nSpeaker")
                        .fontWeight(.semibold)
                }
                Toggle(isOn: $speakerSwB) {
                    
                }
                .rotationEffect(.degrees(-90))
            }
            .padding(.horizontal, 5)
            .foregroundColor(speakerSwB ? .white : .black)
        }.frame(width: 140, height: 180, alignment: .leading)
    }
}

struct fanB: View {
   // @State var sw : Bool = false
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
                    Text("Smart \nFan")
                        .fontWeight(.semibold)
                }
                Toggle(isOn: $fanSwB) {
                    
                }
                .rotationEffect(.degrees(-90))
            }
            .padding(.horizontal, 5)
            .foregroundColor(fanSwB ? .white : .black)
        }.frame(width: 140, height: 180, alignment: .leading)
    }
}

