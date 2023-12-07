import SwiftUI

struct GetPremiumView: View {
    
    var body: some View {
        ZStack{
            Color.back
                .ignoresSafeArea(.all)
            VStack{
                Image("Top")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding(.bottom,300)
                    .overlay {
                        VStack(spacing:20){
                            Text("Get Premium-string")
                                .font(Font.custom("SF Pro Rounded", size: 40).weight(.bold))
                                .multilineTextAlignment(.center)
                                .foregroundColor(.white)
                                .frame(width: 343, alignment: .center)
                                .padding(.top,150)
                                PremiumView()
                              
                             Text("Auto-renewable\nsubscription at $%/week-string")
                                .font(Font.custom("SF Pro Rounded",size: 17)
                                .weight(.semibold))
                                .multilineTextAlignment(.center)
                                .foregroundColor(.white)
                                .frame(width: 311, alignment: .top)
                                .padding(.top,150)
                            
                                 SubscribeButton()
                                
                              HStack(spacing:20){
                                Text("Private Policy-string")
                                    .font(Font.custom("SF Pro Rounded", size: 13))
                                    .underline()
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.white.opacity(0.5))
                                    .padding()
                                Text("Terms of Use-string")
                                    .font(Font.custom("SF Pro Rounded", size: 13))
                                    .underline()
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.white.opacity(0.5))
                                Text("Restore-string")
                                    .font(Font.custom("SF Pro Rounded", size: 13))
                                    .underline()
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.white.opacity(0.5))
                                    .padding()
                    }
                  }
               }
            }
        }
    }
}

#Preview {
    GetPremiumView()
       
}
