import SwiftUI

struct OnBoardingViewCustom: View {
    @State private var isStartActive = false
    @State private var isLoginActive = false
    var body: some View {
   
            VStack(spacing:20){
                
                Button(action:{
                    isStartActive = true
                },
                       label: {
                    
                    ZStack{
                        
                        Text("Start-string")
                            .foregroundColor(.white)
                            .bold()
                            .font(.title3)
                            .frame(width: 311, height: 50, alignment: .center)
                            .background(Color(.primery))
                            .cornerRadius(10)

                        
                    }
                    
                }).fullScreenCover(isPresented: $isStartActive){
                    TabBarView()
                }
                

            }
        
    }
}

#Preview {
    OnBoardingViewCustom()
    .environmentObject(AudioManager())
}

