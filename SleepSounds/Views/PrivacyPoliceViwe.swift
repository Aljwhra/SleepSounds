

import SwiftUI

struct PrivacyPoliceViwe: View {
    var body: some View {
        
        ZStack{
            Color.back
                .ignoresSafeArea()
            
            Link("Private Policy-string", destination: URL(string: "https://www.iubenda.com/privacy-policy/61208998")!)
                .foregroundColor(.white)
                .font(.title)}
    }
}

#Preview {
    PrivacyPoliceViwe()
    
}
