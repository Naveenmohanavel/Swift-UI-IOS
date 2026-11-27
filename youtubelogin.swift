youtube login ui design:

App features
- YouTube-inspired login screen
- Email input field
- Password input field
- Show/hide password
- Login validation
- Sign-up screen
- Forgot password option
- Navigation to the home screen
- YouTube-style bottom navigation

swift program:


import SwiftUI

struct ContentView: View {

    @State private var email = ""
    @State private var password = ""
    @State private var showPassword = false
    @State private var isLoggedIn = false
    @State private var errorMessage = ""

    var body: some View {

        NavigationStack {

            VStack(spacing: 25) {

                Spacer()

                // YouTube Logo
                Image(systemName: "play.rectangle.fill")
                    .font(.system(size: 75))
                    .foregroundColor(.red)

                Text("YouTube")
                    .font(.largeTitle)
                    .fontWeight(.bold)

                Text("Sign in to continue")
                    .font(.title3)
                    .foregroundColor(.gray)

                // Email Field
                TextField("Email or phone", text: $email)
                    .keyboardType(.emailAddress)
                    .textInputAutocapitalization(.never)
                    .padding()
                    .background(Color.gray.opacity(0.12))
                    .cornerRadius(10)

                // Password Field
                HStack {

                    Group {
                        if showPassword {
                            TextField("Password", text: $password)
                        } else {
                            SecureField("Password", text: $password)
                        }
                    }

                    Button {
                        showPassword.toggle()
                    } label: {
                        Image(systemName: showPassword
                              ? "eye.slash" : "eye")
                            .foregroundColor(.gray)
                    }
                }
                .padding()
                .background(Color.gray.opacity(0.12))
                .cornerRadius(10)

                // Error Message
                if !errorMessage.isEmpty {
                    Text(errorMessage)
                        .foregroundColor(.red)
                        .font(.caption)
                }

                // Login Button
                Button {

                    if email.isEmpty || password.isEmpty {
                        errorMessage = "Please enter email and password"
                    } else {
                        errorMessage = ""
                        isLoggedIn = true
                    }

                } label: {

                    Text("Sign In")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.red)
                        .cornerRadius(10)
                }

                // Forgot Password
                Button("Forgot Password?") {
                    errorMessage = "Password recovery is not connected yet."
                }
                .foregroundColor(.blue)

                // Create Account
                NavigationLink("Create an account") {
                    RegisterView()
                }
                .foregroundColor(.blue)

                Spacer()
            }
            .padding(25)
            .navigationDestination(isPresented: $isLoggedIn) {
                YouTubeHomeView()
            }
        }
    }
}

// MARK: - Register Screen

struct RegisterView: View {

    @State private var name = ""
    @State private var email = ""
    @State private var password = ""

    var body: some View {

        VStack(spacing: 20) {

            Text("Create Account")
                .font(.largeTitle)
                .fontWeight(.bold)

            TextField("Full Name", text: $name)
                .textFieldStyle(.roundedBorder)

            TextField("Email", text: $email)
                .textFieldStyle(.roundedBorder)

            SecureField("Password", text: $password)
                .textFieldStyle(.roundedBorder)

            Button("Create Account") {
                print("Registration demo")
            }
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.red)
            .cornerRadius(10)

            Spacer()
        }
        .padding()
        .navigationTitle("Register")
    }
}

// MARK: - YouTube Home Screen

struct YouTubeHomeView: View {

    var body: some View {

        TabView {

            YouTubeFeedView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }

            Text("Shorts Screen")
                .tabItem {
                    Label("Shorts", systemImage: "play.rectangle")
                }

            Text("Subscriptions Screen")
                .tabItem {
                    Label("Subscriptions", systemImage: "play.square")
                }

            Text("Your Profile")
                .tabItem {
                    Label("You", systemImage: "person.circle")
                }
        }
        .tint(.red)
    }
}

// MARK: - Video Feed

struct YouTubeFeedView: View {

    var body: some View {

        NavigationStack {

            ScrollView {

                VStack(alignment: .leading, spacing: 20) {

                    HStack {
                        Image(systemName: "play.rectangle.fill")
                            .foregroundColor(.red)
                            .font(.largeTitle)

                        Text("YouTube")
                            .font(.title2)
                            .fontWeight(.bold)

                        Spacer()

                        Image(systemName: "magnifyingglass")
                            .font(.title2)
                    }

                    ForEach(1...5, id: \.self) { number in

                        VStack(alignment: .leading, spacing: 8) {

                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color.gray.opacity(0.25))
                                .frame(height: 200)
                                .overlay {
                                    Image(systemName: "play.circle.fill")
                                        .font(.system(size: 55))
                                        .foregroundColor(.white)
                                }

                            Text("Sample YouTube Video \(number)")
                                .font(.headline)

                            Text("Channel Name • 10K views • 2 days ago")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                    }
                }
                .padding()
            }
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    ContentView()
}
