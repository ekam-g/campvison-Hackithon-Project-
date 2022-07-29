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
                NavigationLink(destination: NightVison()) {
                    Text("Show Detail View")
                
                }.navigationTitle("Camp Helper")
            }
        }
        
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
