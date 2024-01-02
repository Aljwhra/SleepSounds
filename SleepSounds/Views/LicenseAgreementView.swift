import SwiftUI

struct LicenseAgreementView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack{
            Color.back
                .ignoresSafeArea()
            
            HStack{
                Button{
                    dismiss()
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .font(.system(size: 30))
                        .foregroundStyle(.white)
                }
                Spacer()
            }
            .frame(alignment: .leading)
            .padding(.bottom,700)
            .padding()
            
            Link("License Agreemen-string", destination: URL(string: "https://asticorp.com/wp-content/uploads/2015/07/ASTIsoftwareagreement.pdf")!)
                .foregroundColor(.white)
                .font(.title)
        }
    }
}

#Preview {
    LicenseAgreementView()
}
