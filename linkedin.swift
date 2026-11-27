swift program for linkedin login profile:

This version includes login navigation, a professional feed, likes, a create-post action, job listings, networking, messaging and profile navigation.

swift program:


import SwiftUI

struct ContentView: View {

    @State private var email = ""
    @State private var password = ""
    @State private var loggedIn = false

    var body: some View {

        if loggedIn {
            LinkedInHomeView()
        } else {

            VStack(spacing: 25) {

                Spacer()

                Text("in")
                    .font(.system(size: 75, weight: .bold))
                    .foregroundColor(.blue)

                Text("Welcome to LinkedIn")
                    .font(.largeTitle)
                    .bold()

                Text("Connect with professionals")
                    .foregroundColor(.gray)

                TextField("Email or Phone", text: $email)
                    .textFieldStyle(.roundedBorder)

                SecureField("Password", text: $password)
                    .textFieldStyle(.roundedBorder)

                Button("Sign In") {

                    if !email.isEmpty && !password.isEmpty {
                        loggedIn = true
                    }
                }
                .font(.headline)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .cornerRadius(25)

                Text("Forgot Password?")
                    .foregroundColor(.blue)

                Spacer()

                Text("New to LinkedIn? Join now")
                    .foregroundColor(.blue)
            }
            .padding(25)
        }
    }
}

// LINKEDIN HOME

struct LinkedInHomeView: View {

    @State private var selectedTab = 0
    @State private var liked = false
    @State private var showPost = false

    var body: some View {

        VStack {

            HStack {

                Text("in")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.blue)

                TextField("Search", text: .constant(""))
                    .textFieldStyle(.roundedBorder)

                Image(systemName: "message.fill")
                    .foregroundColor(.gray)
            }
            .padding()

            if selectedTab == 0 {

                ScrollView {

                    VStack(alignment: .leading, spacing: 15) {

                        HStack {
                            Image(systemName: "person.circle.fill")
                                .font(.largeTitle)

                            VStack(alignment: .leading) {
                                Text("Naveen Mohan")
                                    .bold()

                                Text("Software Developer")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }

                            Spacer()
                        }

                        Divider()

                        Text("Welcome to your professional network!")
                            .font(.headline)

                        Text("Learn new skills, connect with professionals and explore career opportunities.")
                            .font(.body)

                        HStack {
                            Text("👍 Like")
                            Spacer()
                            Text("💬 Comment")
                            Spacer()
                            Text("↗ Share")
                        }
                        .padding(.vertical)

                        Divider()

                        Text("Suggested Posts")
                            .font(.title3)
                            .bold()

                        Text("Technology is changing the future of software development. Keep learning and keep growing!")
                            .padding()
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(10)

                        Button {
                            liked.toggle()
                        } label: {
                            Label(
                                liked ? "Liked" : "Like",
                                systemImage: "hand.thumbsup.fill"
                            )
                        }
                        .foregroundColor(liked ? .blue : .gray)
                    }
                    .padding()
                }

            } else if selectedTab == 1 {

                NetworkPage()

            } else if selectedTab == 2 {

                JobsPage()

            } else if selectedTab == 3 {

                MessagingPage()

            } else {

                ProfilePage()
            }

            Spacer()

            HStack {

                tab("house.fill", name: "Home", index: 0)
                Spacer()

                tab("person.2.fill", name: "Network", index: 1)
                Spacer()

                tab("briefcase.fill", name: "Jobs", index: 2)
                Spacer()

                tab("message.fill", name: "Chat", index: 3)
                Spacer()

                tab("person.fill", name: "Me", index: 4)
            }
            .padding()
            .background(Color.gray.opacity(0.1))
        }
    }

    func tab(_ icon: String, name: String, index: Int) -> some View {

        Button {
            selectedTab = index
        } label: {

            VStack {
                Image(systemName: icon)
                Text(name)
                    .font(.caption2)
            }
            .foregroundColor(
                selectedTab == index ? .blue : .gray
            )
        }
    }
}

// NETWORK PAGE

struct NetworkPage: View {

    var body: some View {

        VStack(spacing: 20) {

            Text("My Network")
                .font(.largeTitle)
                .bold()

            Image(systemName: "person.2.fill")
                .font(.system(size: 65))
                .foregroundColor(.blue)

            Text("Grow Your Network")
                .font(.title2)

            Text("Connect with professionals in your industry.")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)

            Button("Find Connections") {
                print("Finding connections")
            }
            .foregroundColor(.white)
            .padding()
            .background(.blue)
            .cornerRadius(10)

            Spacer()
        }
        .padding()
    }
}

// JOBS PAGE

struct JobsPage: View {

    var body: some View {

        VStack(alignment: .leading, spacing: 20) {

            Text("Find Jobs")
                .font(.largeTitle)
                .bold()

            TextField("Search job title or company", text: .constant(""))
                .textFieldStyle(.roundedBorder)

            Text("Recommended Jobs")
                .font(.title2)
                .bold()

            job("Software Developer", company: "ABC Technologies")
            job("Java Developer", company: "XYZ Solutions")
            job("iOS Developer", company: "Mobile Tech")

            Spacer()
        }
        .padding()
    }

    func job(_ title: String, company: String) -> some View {

        VStack(alignment: .leading, spacing: 5) {

            Text(title)
                .bold()

            Text(company)
                .foregroundColor(.gray)

            Text("Full Time • India")
                .font(.caption)
                .foregroundColor(.gray)

            Button("View Job") {
                print("Job selected: \(title)")
            }
            .foregroundColor(.blue)

            Divider()
        }
    }
}

// MESSAGING PAGE

struct MessagingPage: View {

    var body: some View {

        VStack {

            Text("Messaging")
                .font(.largeTitle)
                .bold()

            Image(systemName: "message.fill")
                .font(.system(size: 65))
                .foregroundColor(.blue)

            Text("Your Messages")
                .font(.title2)

            Text("Start a professional conversation.")
                .foregroundColor(.gray)

            Spacer()
        }
        .padding()
    }
}

// PROFILE PAGE

struct ProfilePage: View {

    var body: some View {

        VStack(spacing: 15) {

            Image(systemName: "person.circle.fill")
                .font(.system(size: 100))
                .foregroundColor(.blue)

            Text("Naveen Mohan")
                .font(.title)
                .bold()

            Text("Computer Science Engineering Student")
                .foregroundColor(.gray)

            Divider()

            Text("Education")
                .font(.headline)

            Text("B.E. Computer Science and Engineering")

            Divider()

            Text("Skills")
                .font(.headline)

            Text("Java • Swift • SQL • Azure • Networking")

            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
