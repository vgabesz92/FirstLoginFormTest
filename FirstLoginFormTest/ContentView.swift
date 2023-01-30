//
//  ContentView.swift
//  FirstLoginFormTest
//
//  Created by Virág Gábor on 2023. 01. 30..
//

import SwiftUI
let primaryColor = Color("colorLightGrey")
let titleColor = Color("colorTitle")

struct ContentView: View {
    var body: some View {
        VStack {
            welcomeText()
            userImage()
            usernameField()
            passwordField()
            submitButton()
        }
        .padding(15)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct welcomeText: View {
    var body: some View {
        return Text("Szevasz bástya")
            .foregroundColor(titleColor)
            .font(.title2)
            .fontWeight(.bold)
            .padding(.bottom, 20)
    }
}

struct userImage: View {
    var body: some View {
        return Image("userImage")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150, height: 150)
            .clipShape(Circle())
            .overlay(
                RoundedRectangle(cornerRadius: 150)
                    .stroke(primaryColor, lineWidth: 5))
            .padding(.bottom, 75)
    }
}

struct usernameField: View {
    @State var username: String = ""
    var body: some View {
        return TextField("Felhasználónév", text: $username)
            .disableAutocorrection(true)
            .padding()
            .background(primaryColor)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}

struct passwordField: View {
    @State var password: String = ""
    var body: some View {
        return SecureField("Jelszó", text: $password)
            .padding()
            .background(primaryColor)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}

struct submitButton: View {
    var body: some View {
        return Button { print("Button teszt") } label: {
            Text("Belépés")
        }
        .font(.headline)
        .frame(width: 220, height: 60)
        .foregroundColor(primaryColor)
        .background(titleColor)
        .cornerRadius(10)
    }
}
