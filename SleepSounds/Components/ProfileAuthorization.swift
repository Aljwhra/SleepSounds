import SwiftUI

struct ProfileAuthorization: View {
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
                    
                    Image("Image 7")
                        .frame(width: 72, height: 72)
                    
                    Text("Authorization-string")
                        .font(.title2)
                        .bold()
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .frame(width: 263, alignment: .center)
                    
                    Text("To access all your favorite sounds, signin-string")
                    .font(.caption)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.gray)

                    
                    Button(action:{
                        isActive = true
                    },
                           label: {
                        
                        ZStack{
                            
                            HStack{
                                
                                Text("Login with Email-string")
                                    .bold()
                                    .padding(.leading)
                                    .foregroundColor(.white)
                                    .bold()
                                    .font(.subheadline)
                                    .frame(width: 311, height: 50, alignment: .center)
                                    .background(Color(.back))
                                    .cornerRadius(10)
//                                    .overlay(
//                                        Image(systemName: "apple.logo")
//                                            .resizable()
//                                            .scaledToFit()
//                                            .frame(width:22,height: 22)
//                                            .padding(.trailing,195)
//                                            .padding(.bottom,6)
//                                            .foregroundColor(.white))
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
