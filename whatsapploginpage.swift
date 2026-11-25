swift program :


import SwiftUI

struct ContentView: View {

    @State private var email = ""
    @State private var password = ""
    @State private var showHome = false

    var body: some View {

        NavigationStack {

            VStack(spacing: 25) {

                Spacer()

                Image(systemName: "camera.circle.fill")
                    .font(.system(size: 80))
                    .foregroundStyle(
                        LinearGradient(
                            colors: [.purple, .pink, .orange],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )

                Text("Whatsapp")
                    .font(.largeTitle)
                    .bold()

                Text("Login to your account")
                    .foregroundColor(.gray)

                TextField("Email Address", text: $email)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                    .keyboardType(.emailAddress)
                    .textInputAutocapitalization(.never)

                SecureField("Password", text: $password)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)

                NavigationLink(
                    destination: HomeView(email: email),
                    isActive: $showHome
                ) {
                    EmptyView()
                }

                Button(action: {

                    if !email.isEmpty && !password.isEmpty {
                        showHome = true
                    }

                }) {
                    Text("Log In")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(
                            LinearGradient(
                                colors: [.purple, .pink],
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                        .cornerRadius(10)
                }

                Button("Forgot Password?") {
                    print("Forgot Password Clicked")
                }
                .foregroundColor(.blue)

                Spacer()

                HStack {
                    Text("Don't have an account?")

                    Button("Sign Up") {
                        print("Sign Up Clicked")
                    }
                    .foregroundColor(.blue)
                }
                .font(.footnote)

            }
            .padding(30)
            .navigationBarHidden(true)
        }
    }
}

// HOME PAGE

struct HomeView: View {

    let email: String

    var body: some View {

        VStack(spacing: 25) {

            Image(systemName: "house.fill")
                .font(.system(size: 65))
                .foregroundColor(.pink)

            Text("Welcome Home!")
                .font(.largeTitle)
                .bold()

            Text("Hello, \(email)")
                .font(.title3)
                .foregroundColor(.gray)

            Text("You have successfully opened the Home Page.")
                .multilineTextAlignment(.center)
                .padding()

            Spacer()

            HStack(spacing: 40) {

                Image(systemName: "house.fill")
                Image(systemName: "magnifyingglass")
                Image(systemName: "plus.app")
                Image(systemName: "heart")
                Image(systemName: "person")
            }
            .font(.title2)
            .foregroundColor(.pink)
            .padding()

        }
        .padding()
        .navigationTitle("Home")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ContentView()
}




explanation:

2. Question
Create an Instagram-inspired social media login application using SwiftUI with the following features:
1. Display a login page.
2. Add email and password fields.
3. Add a Login button.
4. When the Login button is clicked, navigate to the Home Page.
5. Display a welcome message on the Home Page.
6. Add a Logout button to return to the Login Page