import SwiftUI

struct OnBoardingCustom: View {
    @State private var isLoginActive = false
    @State private var isNextActive = false

    var body: some View {
       
        ZStack{
            
            VStack(spacing:20){
               
                Button(action:{
                    
                    isNextActive = true
                },
                       label: {
                    
                    Text("Next-string")
                        .foregroundColor(.white)
                        .bold()
                        .font(.title3)
                        .frame(width: 311, height: 50, alignment: .center)
                        .background(Color(.primery))
                        .cornerRadius(10)
                }).fullScreenCover(isPresented: $isNextActive){
                    TabBarView()
                }

            }
        }
    }
}

#Preview {
    OnBoardingCustom()
    .environmentObject(AudioManager())
}

