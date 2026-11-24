import SwiftUI

/// The root view of MiniSwift Studio's sample app.
struct ContentView: View {
    @State private var count = 0

    var body: some View {
        VStack(spacing: 24) {
            Text("Naveen")
                .font(.largeTitle.weight(.semibold))
                .foregroundStyle(.primary)

            Text("\(count)")
                .font(.system(size: 64, design: .rounded))
                .contentTransition(.numericText())

            Button("Increment") {
                count += 1
            }
            .buttonStyle(.borderedProminent)
            .tint(.orange)
        }
        .padding(40)
    }
}
