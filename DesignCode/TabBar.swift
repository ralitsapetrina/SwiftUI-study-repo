//
//  TabBar.swift
//  DesignCode
//
//  Created by Petrina on 25.12.19.
//  Copyright © 2019 Ralitsa Petrina. All rights reserved.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            Home().tabItem({
                    Image("IconHome")
                    Text("Home")
            })
                .tag(1)
            ContentView().tabItem({
                    Image("IconCards")
                    Text("Certificates")
            })
                .tag(2)
            Settings().tabItem({
                    Image("IconSettings")
                    Text("Settings")
            })
            .tag(3)
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
            .environment(\.colorScheme, .light)
            .environment(\.sizeCategory, .extraLarge)
    }
}
