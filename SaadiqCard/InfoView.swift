//
//  InfoView.swift
//  SaadiqCard
//
//  Created by Saadiq rauf khan on 22/02/20.
//  Copyright © 2020 Saadiq rauf khan. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    
    let imageName: String
    let text: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(.green)
                Text(text)
                    .foregroundColor(Color("Info Color"))
                // for dark mode text color
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(imageName: "phone.fill", text: "hello")
            .previewLayout(.sizeThatFits )
    }
}
