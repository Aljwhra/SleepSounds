
import SwiftUI

struct ProfileLogin: View {
    
    var body: some View {
        
        NavigationStack{
            
            ZStack{
                Color.back
                    .ignoresSafeArea()
                
                ScrollView{
                    
                    VStack{
                        
                        Text("Profile-string")
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.white)
                            .frame(width: 237, height: 44, alignment: .leading)
                            .padding(.leading, 16)
                            .padding(.trailing, 122)
                            .padding(.top, 44)
                            .padding(.bottom, 8)
                        
                        ProfileAuthorization()
                        
                        ProfileView(image:"IconsVector",title: NSLocalizedString("Get premium-string",comment:"this is the transulater forGet premium-string") ,logo:"Right")
                        
                        ProfileView2(image:"Image 3",title:NSLocalizedString("Favorite-string",comment:"this is the transulater for Favorite-string") ,logo:"Right")
                        
                        ProfileView3(image:"Image 4",title:NSLocalizedString("Privacy policy-string",comment:"this is the  transulater for Privacy policy-string"),logo:"Right")
                        
                        ProfileView4(image:"Image 5",title:NSLocalizedString("License Agreemen-string",comment:"this is the transulater for License Agreemen-string"),logo:"Right")
                    }
                    }
                }
            }
        }
    }

#Preview {
    ProfileLogin()
    .environmentObject(AudioManager())
}
