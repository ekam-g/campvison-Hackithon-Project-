//
//  ContentView.swift
//  campvison
//
//  Created by Ekam Ghai on 7/29/22.
//

import SwiftUI
import RealityKit

struct NightVison : View {
    var body: some View {
        return ZStack{
            ARViewContainer().edgesIgnoringSafeArea(.all)
            Rectangle()
                .background(Rectangle().foregroundColor(Color.green))
                .opacity(0.3)
                .ignoresSafeArea()
            VStack{
                Spacer()
                Button("Change Power") {
                    
                }
            }
                

        }
    }
}

struct ARViewContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        NightVison()
    }
}
#endif
