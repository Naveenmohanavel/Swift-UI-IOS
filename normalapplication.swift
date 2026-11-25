SwiftUI:
Create a new iOS project in Xcode and open ContentView.swift.

swift program:


import SwiftUI

struct ContentView: View {

    @State private var email = ""
    @State private var password = ""

    var body: some View {

        VStack(spacing: 20) {

            Image(systemName: "person.circle.fill")
                .font(.system(size: 70))
                .foregroundColor(.blue)

            Text("Welcome Back!")
                .font(.largeTitle)
                .bold()

            Text("Login to your account")
                .foregroundColor(.gray)

            TextField("Enter your email", text: $email)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)

            SecureField("Enter your password", text: $password)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)

            Button(action: {
                print("Login Button Clicked")
            }) {
                Text("Login")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }

            HStack {
                Text("Don't have an account?")
                    .foregroundColor(.gray)

                Text("Sign Up")
                    .foregroundColor(.blue)
                    .bold()
            }
        }
        .padding(25)
    }
}

#Preview {
    ContentView()
}


