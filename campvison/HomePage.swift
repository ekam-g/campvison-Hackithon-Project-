//
//  HomePage.swift
//  campvison
//
//  Created by Ekam Ghai on 7/29/22.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Image("images")
                Spacer()
                Spacer()
                NavigationLink(destination: NightVison()) {
                    Text("Night Vision")
                        .frame(width: 150, height: 25)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                        .padding(.all, 10.0)
                        .background(Color.white)
                        .cornerRadius(40)
                        .padding(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color.white, lineWidth: 5)
                        )
                    
                }.navigationTitle("Camp Helper")
                Spacer()

            }
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
