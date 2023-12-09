import SwiftUI

struct ProfileViewLogout: View {
   @State private var isActive = false

    var body: some View {
        
        VStack(alignment: .leading, spacing: 24) { }
            .padding(.horizontal, 40)
            .padding(.vertical, 24)
            .frame(width: 360, height: 260, alignment: .leading)
            .background(.primery)
            .cornerRadius(24)
            .overlay{
                RoundedRectangle(cornerRadius: 24)
                    .inset(by: 0.5)
                    .stroke(Color(red: 0.18, green: 0.2, blue: 0.29), lineWidth: 1)
               
                VStack(alignment: .center, spacing: 10){
                    
                    Image("icons8-user_folder")
                        .frame(width: 72, height: 72)
                    
                    Text("First name Last name-string")
                        .font(Font.custom("SF Pro Rounded", size: 17)
                            .weight(.semibold))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .frame(width: 263, alignment: .center)
                    
                     Text("Login with Email\nemail@gmail.com-string")
                        .font(Font.custom("SF Pro Rounded", size: 13))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                        .frame(width: 263, alignment: .top)
                    
                    Button(action:{
                        isActive = true

                    },
                           label: {
                        
                        ZStack{
                            
                            HStack{
                                AlartButton()
                            }
                             
                            
                        }
                    }) .fullScreenCover(isPresented: $isActive){
                        ProfileLogin()
                    }
                    .padding()
                    
                }
            }
        .padding(.bottom,37)
         Divider()
        .frame(width: 375, height: 2)
       .background(Color(red: 0.13, green: 0.16, blue: 0.25))
    }
}
#Preview {
    ProfileViewLogout()
}
