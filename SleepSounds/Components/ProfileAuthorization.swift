import SwiftUI

struct ProfileAuthorization: View {
    @State private var isActive = false

    var body: some View {
        
        VStack(alignment: .leading, spacing: 24) { }
            .padding(.horizontal, 40)
            .padding(.vertical, 24)
            .frame(width: 343, height: 252, alignment: .leading)
            .background(.primery)
            .cornerRadius(24)
            .overlay{
                RoundedRectangle(cornerRadius: 24)
                    .inset(by: 0.5)
                    .stroke(Color(red: 0.18, green: 0.2, blue: 0.29), lineWidth: 1)
               
            VStack(alignment: .center, spacing: 10){
                    
                    Image("Image 7")
                        .frame(width: 72, height: 72)
                    
                    Text("Authorization-string")
                        .font(Font.custom("SF Pro Rounded", size: 17).weight(.semibold))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .frame(width: 263, alignment: .center)
                    
                    Text("In order to access the library of favorite packs \nof sounds, log in with Apple ID-string")
                        .font(Font.custom("SF Pro Rounded", size: 13))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.92, green: 0.92, blue: 0.96).opacity(0.6))
                        .frame(width: 263, alignment: .top)
                    
                    Button(action:{
                        isActive = true
                    },
                           label: {
                        
                        ZStack{
                            
                            HStack{
                                
                                Text("Login with Apple ID-string")
                                    .bold()
                                    .padding(.leading)
                                    .foregroundColor(.white)
                                    .bold()
                                    .font(.title3)
                                    .frame(width: 311, height: 50, alignment: .center)
                                    .background(Color(.back))
                                    .cornerRadius(100)
                                    .background(RoundedRectangle(cornerRadius: 30)
                                        .foregroundColor(Color.white))
                                    .overlay(
                                        Image(systemName: "apple.logo")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width:22,height: 22)
                                            .padding(.trailing,195)
                                            .padding(.bottom,6)
                                            .foregroundColor(.white))
                                           .padding()
                            }
                        }
                    })
                    .fullScreenCover(isPresented: $isActive){
                      LogineView()}
                }
            }
        .padding(.bottom,37)
         Divider()
        .frame(width: 375, height: 2)
       .background(Color(red: 0.13, green: 0.16, blue: 0.25))
    }
}

#Preview {
    ProfileAuthorization()
}
