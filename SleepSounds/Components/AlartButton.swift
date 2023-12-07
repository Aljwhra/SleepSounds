import SwiftUI

struct AlartButton: View {
    
    @State private var showAlert = false

    var body: some View {
        
       Button("Logout-string") {
            showAlert = true
        }
        .alert("Are you sure you want to log out?-string", isPresented: $showAlert) {
            
            Button("Logout-string", role: .destructive) {
                print("Logout button tapped in alert box")
              
            }
            
            Button("Cancel-string", role: .cancel) {
                print("Cancel button tapped in alert box")
            }
        }
            .padding(.leading)
            .foregroundColor(.white)
            .bold()
            .font(.title3)
            .frame(width: 311, height: 50, alignment: .center)
            .background(Color(.back))
            .cornerRadius(100)
            .background(RoundedRectangle(cornerRadius: 30)
            .foregroundColor(Color.white))
    }
}
                                        
#Preview {
    AlartButton()
}

