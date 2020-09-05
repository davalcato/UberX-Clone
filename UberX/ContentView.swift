//
//  ContentView.swift
//  UberX
//
//  Created by Daval Cato on 9/5/20.
//

import SwiftUI
import MapKit
import CoreLocation

struct ContentView: View {
    var body: some View {
       
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home : View {
    
    @State var map = MKMapView()
    @State var manager = CLLocationManager()
    
    var body: some View{
        
        ZStack{
            
            VStack(spacing: 0){
                
                HStack{
                    
                    Text("Pick a Location")
                        .font(.title)
                    
                    Spacer()
                }
                .padding()
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                .background(Color.white)
                
                MapView(map: self.$map)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct MapView : UIViewRepresentable {
    @Binding var map : MKMapView

    func makeUIView(context: Context) -> MKMapView {
        
        return map
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
        
    }
    
}















