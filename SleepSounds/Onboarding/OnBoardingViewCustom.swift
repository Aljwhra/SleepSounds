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
//                            .background(RoundedRectangle(cornerRadius: 10)
//                                .foregroundColor(Color.white))
                        
                    }
                    
                }).fullScreenCover(isPresented: $isStartActive){
                    TabBarView()
                }
                
                ZStack{
                    
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
                                    .frame(width: 311, height: 50, alignment: .center)
                                    .background(Color(.primery))
                                    .cornerRadius(10)
//                                    .background(RoundedRectangle(cornerRadius: 10)
//                                        .foregroundColor(Color.white))
                                
                                    .overlay(
                                        
                                        Image(systemName: "apple.logo")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width:22,height: 22)
                                            .padding(.trailing,190)
                                            .padding(.bottom,6)
                                            .foregroundColor(.white)
                                        
                                    )
                            }
                        }
                    })
                    .fullScreenCover(isPresented: $isLoginActive){
                        LogineView()
                    }
                }
            }
        
    }
}

#Preview {
    OnBoardingViewCustom()
    .environmentObject(AudioManager())
}

