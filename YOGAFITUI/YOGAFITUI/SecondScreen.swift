//
//  ContentView.swift
//  UiAPP
//
//  Created by Muzamil on 11/17/20.
//

import SwiftUI


struct SecondScreen: View {
    @State var show = true
    @State var name = true
    @State var fullScreen = false
    @State var isSHowingSecondScreen  = false
    var body: some View {
       
        NavigationView
            {
           
            VStack{
                
            Text("LOGIN")
                .bold()
                .foregroundColor(.red)
                .font(.largeTitle)
              
                TextField("USERNAME", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal, 20.0)
                    
                    .frame(width: 140, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .shadow(radius: 90)
                    
                    .border(/*@START_MENU_TOKEN@*/Color.orange/*@END_MENU_TOKEN@*/, width: 4)
                    .cornerRadius(40.2)
                    
                SecureField("PASSWORD", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal, 20.0)
                    .frame(width: 140, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .shadow(radius: 90)
                    
                    .border(/*@START_MENU_TOKEN@*/Color.orange/*@END_MENU_TOKEN@*/, width: 4)
                    .cornerRadius(40.2)
               
               

        NavigationLink(destination: HomeScreen()){
            Text("LOGIN")
                .lineLimit(nil)
                .padding(.all, 9.0)
                        .frame(width: 94, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color.blue)
                        .foregroundColor(.white)
                .cornerRadius(44.0)
                  
        }.navigationBarHidden(true)
        
    }
        }
    }
    
struct SecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SecondScreen()
        }
    }
}
}
