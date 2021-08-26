//
//  ContentView.swift
//  SmartHome
//
//  Created by Jesús Francisco Leyva Juárez on 07/07/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack{
                ScrollView{
                    top()
                    VStack (spacing: 35){
                        HStack(spacing: 35){
                            bedroom()
                            diningRoom()
                        }
                        HStack(spacing: 35){
                            livingRoom()
                            kitchen()
                        }
                    }
                    Spacer()
                }
            }
            .background(Color.black.opacity(0.06))
            .ignoresSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct top: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                VStack {
                    HStack{
                        
                        Image(systemName: "circle.fill")
                            .resizable()
                            .frame(width: 8, height: 8)
                        Image(systemName: "circle.fill")
                            .resizable()
                            .frame(width: 8, height: 8)
                    }
                    
                    HStack{
                        
                        Image(systemName: "circle.fill")
                            .resizable()
                            .frame(width: 8, height: 8)
                        Image(systemName: "circle.fill")
                            .resizable()
                            .frame(width: 8, height: 8)
                    }
                }
                Spacer()
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .frame(width: 40, height: 40)
            } .padding(.vertical, 20)
            .padding()
            VStack(alignment: .leading, spacing: 8){
                Text("Hi Jesús 👋")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Text("Welcome to Your Home")
                    .font(.body)
                
                Text("Smart Rooms")
                    .fontWeight(.regular)
                    .font(.system(size: 20))
                    .padding(.vertical, 25)
            } .padding()
            
        }
        
        
    }
}

//SMART ROOMS
struct bedroom: View {
    @State var sw :Bool = false
    var body: some View {
        ZStack{
            
            Rectangle()
                .frame(width: 150, height: 200)
                .cornerRadius(30)
                .foregroundColor(.white)
            NavigationLink("", destination: divicesBedroom(), isActive: $sw)
            Button(action: {
                sw.toggle()
                
            }) {
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading, spacing: 40){
                        Image("camaN")
                            .resizable()
                            .frame(width: 38, height: 43)
                        Text("Bed Room")
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                    }
                    
                }
            }
            .padding(.horizontal, 10)
            
        }.frame(width: 140, height: 180, alignment: .leading)
    }
    
}

struct livingRoom: View {
    @State var sw : Bool = false
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 150, height: 200)
                .cornerRadius(30)
                .foregroundColor(.white)
            NavigationLink("", destination: divicesLivingroom(), isActive: $sw)
            Button(action: {
                sw.toggle()
            }) {
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading, spacing: 40){
                        Image("sofaN")
                            .resizable()
                            .frame(width: 39, height: 43)
                        Text("Living Room")
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                    }
                }
            }
            .padding(.horizontal, 10)
 
        }.frame(width: 140, height: 180, alignment: .leading)
        
    }
   
}

struct diningRoom: View {
    @State var sw : Bool = false
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 150, height: 200)
                .cornerRadius(30)
                .foregroundColor(.white)
            NavigationLink("", destination: divicesDiningroom(), isActive: $sw)
            Button(action: {
                sw.toggle()
            }) {
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading, spacing: 40){
                        Image("mesaN")
                            .resizable()
                            .frame(width: 39, height: 43)
                        Text("Dining Room")
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                    }
                }
            }
            .padding(.horizontal, 10)
       
        }.frame(width: 140, height: 180, alignment: .leading)
    }
   
}

struct kitchen: View {
    @State var sw : Bool = false
    @State var swL: Bool = false
    @State var swS: Bool = false
    @State var swF: Bool = false
    @State var swSp: Bool = false
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 150, height: 200)
                .cornerRadius(30)
                .foregroundColor(.white)
            NavigationLink("", destination: divicesKitchen(), isActive: $sw)
            Button(action: {
                sw.toggle()
            }) {
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading, spacing: 40){
                        Image("refriN")
                            .resizable()
                            .frame(width: 38, height: 43)
                            .offset(x: -20)
                        Text("Kitchen")
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                            .offset(x: -15)
                    }
                }
            }
            .padding(.horizontal, 10)

        }.frame(width: 140, height: 180, alignment: .leading)
    }
}

