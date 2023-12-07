import SwiftUI

struct LicenseAgreementView: View {
    var body: some View {
        ZStack{
            Color.back
                .ignoresSafeArea()
            Link("License Agreemen-string", destination: URL(string: "https://www.iubenda.com/privacy-policy/61208998")!)
                .foregroundColor(.white)
                .font(.title)
        }
    }
}

#Preview {
    LicenseAgreementView()
}
