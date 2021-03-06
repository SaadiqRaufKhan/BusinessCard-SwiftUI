//
//  ContentView.swift
//  SaadiqCard
//
//  Created by Saadiq rauf khan on 22/02/20.
//  Copyright © 2020 Saadiq rauf khan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red:0.09, green:0.63, blue:0.52, opacity:1.0)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("saadiq")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180, height: 180)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Text("Saadiq Rauf Khan")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 26))
                Divider()
                InfoView(imageName: "phone.fill", text: "+91 89756 23481")
                InfoView(imageName: "envelope.fill", text: "saadiq351@gmail.com")
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


