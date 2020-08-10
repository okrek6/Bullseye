//
//  ContentView.swift
//  Bullseye
//
//  Created by Brendan Krekeler on 8/7/20.
//  Copyright © 2020 Brendan Krekeler. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var alertIsVisiable: Bool = false
    
    var body: some View {
        VStack {
            VStack {
                Spacer()
                //Target row
                HStack {
                    Text("Put the bullseye as close as you can to: ")
                    Text(/*@START_MENU_TOKEN@*/"100"/*@END_MENU_TOKEN@*/)
                }
                Spacer()
                //Slider row
                HStack{
                    Text("1")
                    Slider(value: .constant(10))
                    Text("100")
                }
                Spacer()
                //button row
                Button(action: {
                    print("Button pressed")
                    self.alertIsVisiable = true
                }) {
                  Text(/*@START_MENU_TOKEN@*/"Hit me!"/*@END_MENU_TOKEN@*/)
                }
                Spacer()
                // Score Row
                HStack {
                    Button(action: {
                        //action here
                        print("Start Over button was pressed")
                    }) {
                        Text("Start Over")
                        
                    }
                    Spacer()
                    Text("Score:")
                    Text("9999")
                    Spacer()
                    Text("Round:")
                    Text("999")
                    Spacer()
                    Button(action: {
                        //action here
                        print("Info button was pressed")
                    }) {
                        Text("Info")
                        
                    }
                }
                .padding(.bottom,20)
                .alert(isPresented: $alertIsVisiable) { () ->
                    Alert in
                    return Alert(title: Text("Hello there!"), message: Text("This is my first popup."), dismissButton: .default(Text("Awesome!")))
                }
                
                //score row
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 896, height: 414
            ))
    }
}
