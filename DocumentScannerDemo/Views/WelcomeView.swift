struct WelcomeView: View {
    @Binding var isShowingWelcome: Bool // To dismiss the welcome screen

    var body: some View {
        VStack {
            Spacer()
            
            Text("What's New in Document Scanner")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(.horizontal)

            Spacer()

            VStack(alignment: .leading, spacing: 20) {
                FeatureRow(icon: "doc.text.viewfinder", title: "Scan Documents", description: "Scan any document with ease.")
                FeatureRow(icon: "square.and.arrow.down", title: "Save Documents", description: "Persist scanned documents with the new SwiftData Model.")
                FeatureRow(icon: "character.cursor.ibeam", title: "OCR Text Copy", description: "Extract text from documents and copy it easily.")
                            }
            .padding(.horizontal)

            Spacer()
            
            Button(action: {
                isShowingWelcome = false // Dismiss the welcome screen
            }) {
                Text("Start using Document Scanner")
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.brown)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.horizontal)
        }
        .padding()
    }
}