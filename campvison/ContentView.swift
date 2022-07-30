//
//  ContentView.swift
//  campvison
//
//  Created by Ekam Ghai on 7/29/22.
//

import SwiftUI
import RealityKit




struct NightVison : View {
    @State private var amount = 0.3
    
    func increase() {
        if (amount > 0.8){
            amount = amount - 0.05
        } else {
            amount = amount + 0.05
        }
    }
    func decrease(){
        if (amount < 0.1) {
            amount = amount + 0.05
        } else {
            amount = amount - 0.05
        }
    }
    
    var body: some View {
        return ZStack{
            ARViewContainer().edgesIgnoringSafeArea(.all)
            Rectangle()
                .background(Rectangle().foregroundColor(Color.green))
                .opacity(amount)
                .ignoresSafeArea()
            VStack{
                Spacer()
                HStack {
                    Spacer()
                    
                    Button("Power+") {
                        increase()
                    }
                    Spacer()
                    
                    Button("Power-") {
                        decrease()
                    }
                    Spacer()
                    
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
