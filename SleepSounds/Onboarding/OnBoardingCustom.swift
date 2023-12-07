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
                
                Button(action:{
                    isLoginActive = true

                },
                       label: {
                    
                    ZStack{
                        
                        HStack{
                            
                Text("Login with Apple-string")
                    .bold()
                    .padding(.vertical)
                    .foregroundColor(.white)
                    .bold()
                    .font(.title3)
                    .frame(width: 311, height: 50)
                    .background(Color(.primery))
                    .cornerRadius(10)
                    .background(RoundedRectangle(cornerRadius: 30)
                    .foregroundColor(Color.white))
                        
                    .overlay(
                    Image(systemName: "apple.logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width:22,height: 22)
                        .padding(.trailing,190)
                        .padding(.bottom,6)
                        .foregroundColor(.white))
                
                        }
                    }
                })
                        .fullScreenCover(isPresented: $isLoginActive){
                          LogineView()}
            }
        }
    }
}

#Preview {
    OnBoardingCustom()
    .environmentObject(AudioManager())
}

