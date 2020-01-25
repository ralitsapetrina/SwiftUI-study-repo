//
//  Settings.swift
//  DesignCode
//
//  Created by Petrina on 25.01.20.
//  Copyright © 2020 Ralitsa Petrina. All rights reserved.
//

import SwiftUI

struct Settings: View {
    @State var receive = false
    @State var number = 1
    @State var selection = 1
    @State var date = Date()
    @State var email = ""
    @State var submit = false
    var favoriteCourses = ["SwiftUI", "React"]
    
    var body: some View {
        NavigationView {
            Form {
                Toggle(isOn: $receive) {
                    Text("Receive notifications")
                }
                Stepper(value: $number, in: 1...10) {
                    Text("\(number) Notification\(number > 1 ? "s" : "") per week")
                }
                Picker(selection: $selection, label: Text("Favorite course")) {
                    Text("Pick yours").tag(1)
                    Text("SwiftUI").tag(2)
                    Text("React").tag(3)
                }
                DatePicker(selection: $date) {
                    Text("Date")
                    
                }
                Section(header: Text("E-mail")) {
                    TextField("Your e-mail", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                Button(action: { self.submit.toggle() }) {
                    Text("Submit")
                }
                .alert(isPresented: $submit) {
                    Alert(title: Text("Thanks"), message: ( receive ? Text("You will receive \(number) notificaton\(number > 1 ? "s" : "") per month\(selection > 1 ? "\nOn topic: \(favoriteCourses[selection - 2])" : "")\nTo \(email)") : Text("You will receive no notifications.")))
                }
            }
        }
        .navigationBarTitle(Text("Settings"))
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
