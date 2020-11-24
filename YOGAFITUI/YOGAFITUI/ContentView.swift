//
//  ContentView.swift
//  UiAPP
//
//  Created by Muzamil on 11/17/20.
//

import SwiftUI


struct ContentView: View {
    @State var show = true
    @State var name = true
    @State var fullScreen = false
    @State var isSHowingSecondScreen  = false
    var body: some View {
        NavigationView
            {
            VStack{
            Text("YOGA FIT - DAILY")
                .bold()
                .font(.largeTitle)
          Image("yoga")
            .padding(.all, 50.0)
            .frame(width: 25.0)
              .frame(width : show ? 700 : 300, height:show ? 600 :300)
              .clipped()
              .cornerRadius(show ? 0 : 30)
            .shadow(radius: 17)
             .scaledToFit()
              .scaleEffect(0.5)
                
                
                
        NavigationLink(destination: SecondScreen()){
            Text("WELCOME")
                .padding(.bottom, 0.0)
                        .frame(width: 100, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color.blue)
                        .foregroundColor(.white)
                .cornerRadius(44.0)
                  
        }.navigationBarHidden(true)
        .statusBar(hidden: true)
        
    }
        }
    }
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
}
