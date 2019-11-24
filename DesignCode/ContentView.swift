//
//  ContentView.swift
//  DesignCode
//
//  Created by Petrina on 24.11.19.
//  Copyright © 2019 Ralitsa Petrina. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack {
                Text("UI Design")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color("accent"))
                    .padding(.top)
                Text(/*@START_MENU_TOKEN@*/"Certificate"/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.white)
            }
            Image("Background")
        }
        .background(Color.black)
        .cornerRadius(10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
