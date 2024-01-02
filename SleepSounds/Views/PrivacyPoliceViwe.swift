

import SwiftUI

struct PrivacyPoliceViwe: View {
    
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
            
            Link("Private Policy-string", destination: URL(string: "https://www.iubenda.com/privacy-policy/61208998")!)
                .foregroundColor(.white)
                .font(.title)}
    }
}

#Preview {
    PrivacyPoliceViwe()
    
}
