//
//  divicesLivingroom.swift
//  SmartHome
//
//  Created by Jesús Francisco Leyva Juárez on 26/08/21.
//

import SwiftUI

struct divicesLivingroom: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            Text("Smart Divices")
                .fontWeight(.regular)
                .font(.system(size: 20))
                .padding(.vertical, 25)
                VStack (spacing: 35){
                    HStack(spacing: 35){
                        lightsL()
                        socketsL()
                    }
                    HStack(spacing: 35){
                        speakersL()
                        fanL()
                    }
                }
        }
    }
}

struct divicesLivingroom_Previews: PreviewProvider {
    static var previews: some View {
        divicesLivingroom()
    }
}

//SMART DIVICES
struct lightsL: View {
   // @State var sw : Bool = false
    @AppStorage("lightSwL") var lightSwL: Bool = false
 
    var body: some View {
        
        ZStack{
            Rectangle()
                .frame(width: 150, height: 200)
                .cornerRadius(30)
                .foregroundColor(lightSwL ? .black: .white)
            
            HStack(alignment: .bottom) {
                
                VStack(alignment: .leading, spacing: 40){
                    Image(lightSwL ? "lightB" : "light")
                        .resizable()
                        .frame(width: 39, height: 43)
                    Text("Smart \nLight")
                        .fontWeight(.semibold)
                }
                Toggle(isOn: $lightSwL) {
                    
                }
                .rotationEffect(.degrees(-90))
            }
            .padding(.horizontal, 10)
            .foregroundColor(lightSwL ? .white : .black)
        }.frame(width: 140, height: 180, alignment: .leading)
        
    }
}
struct socketsL: View {
   // @State var sw : Bool = false
    @AppStorage("socketSwL") var socketSwL: Bool = false
    var body: some View {
        
        ZStack{
            Rectangle()
                .frame(width: 150, height: 200)
                .cornerRadius(30)
                .foregroundColor(socketSwL ? .black: .white)
            
            HStack(alignment: .bottom) {
                
                VStack(alignment: .leading, spacing: 40){
                    Image(socketSwL ? "socketB" : "socket")
                        .resizable()
                        .frame(width: 39, height: 43)
                    
                    Text("Smart \nSocket")
                        .fontWeight(.semibold)
                }
                Toggle(isOn: $socketSwL) {
                    
                }
                .rotationEffect(.degrees(-90))
            }
            .padding(.horizontal, 10)
            .foregroundColor(socketSwL ? .white : .black)
        }.frame(width: 140, height: 180, alignment: .leading)
        
    }
}
struct speakersL: View {
   // @State var sw : Bool = false
    @AppStorage("lspeakerSwL") var speakerSwL: Bool = false
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 150, height: 200)
                .cornerRadius(30)
                .foregroundColor(speakerSwL ? .black: .white)
            HStack(alignment: .bottom) {
                VStack(alignment: .leading, spacing: 40){
                    Image(speakerSwL ? "speakerB" : "speaker")
                        .resizable()
                        .frame(width: 39, height: 43)
                    Text("Smart \nSpeaker")
                        .fontWeight(.semibold)
                }
                Toggle(isOn: $speakerSwL) {
                    
                }
                .rotationEffect(.degrees(-90))
            }
            .padding(.horizontal, 5)
            .foregroundColor(speakerSwL ? .white : .black)
        }.frame(width: 140, height: 180, alignment: .leading)
    }
}

struct fanL: View {
   // @State var sw : Bool = false
    @AppStorage("fanSwL") var fanSwL: Bool = false
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 150, height: 200)
                .cornerRadius(30)
                .foregroundColor(fanSwL ? .black: .white)
            HStack(alignment: .bottom) {
                VStack(alignment: .leading, spacing: 40){
                    Image(fanSwL ? "ventiladorB" : "ventilador")
                        .resizable()
                        .frame(width: 39, height: 43)
                    Text("Smart \nFan")
                        .fontWeight(.semibold)
                }
                Toggle(isOn: $fanSwL) {
                    
                }
                .rotationEffect(.degrees(-90))
            }
            .padding(.horizontal, 5)
            .foregroundColor(fanSwL ? .white : .black)
        }.frame(width: 140, height: 180, alignment: .leading)
    }
}
