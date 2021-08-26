//
//  divicesKitchen.swift
//  SmartHome
//
//  Created by Jesús Francisco Leyva Juárez on 26/08/21.
//

import SwiftUI

struct divicesKitchen: View {
    var body: some View {
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
   // @State var sw : Bool = false
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
                    Text("Smart \nLight")
                        .fontWeight(.semibold)
                }
                Toggle(isOn: $lightSwK) {
                    
                }
                .rotationEffect(.degrees(-90))
            }
            .padding(.horizontal, 10)
            .foregroundColor(lightSwK ? .white : .black)
        }.frame(width: 140, height: 180, alignment: .leading)
        
    }
}
struct socketsK: View {
   // @State var sw : Bool = false
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
                    
                    Text("Smart \nSocket")
                        .fontWeight(.semibold)
                }
                Toggle(isOn: $socketSwK) {
                    
                }
                .rotationEffect(.degrees(-90))
            }
            .padding(.horizontal, 10)
            .foregroundColor(socketSwK ? .white : .black)
        }.frame(width: 140, height: 180, alignment: .leading)
        
    }
}
struct speakersK: View {
   // @State var sw : Bool = false
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
                    Text("Smart \nSpeaker")
                        .fontWeight(.semibold)
                }
                Toggle(isOn: $speakerSwK) {
                    
                }
                .rotationEffect(.degrees(-90))
            }
            .padding(.horizontal, 5)
            .foregroundColor(speakerSwK ? .white : .black)
        }.frame(width: 140, height: 180, alignment: .leading)
    }
}

struct fanK: View {
   // @State var sw : Bool = false
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
                    Text("Smart \nFan")
                        .fontWeight(.semibold)
                }
                Toggle(isOn: $fanSwK) {
                    
                }
                .rotationEffect(.degrees(-90))
            }
            .padding(.horizontal, 5)
            .foregroundColor(fanSwK ? .white : .black)
        }.frame(width: 140, height: 180, alignment: .leading)
    }
}

