import SwiftUI

struct ProfileView: View,Identifiable {
    
    var id = UUID()
    var image:String
    var title:String
    var logo:String
   
    @State private var isActive = false

    var body: some View {
    
            HStack(spacing:16){
                
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 28,height: 28)
                
                HStack(alignment: .center, spacing: 5){
                    
                    Text(title)
                        .font(Font.custom("SF Pro Rounded", size: 17))
                        .foregroundColor(.white)
                        .frame(width: 196, alignment:.leading)
                    
                    Button(action: {
                        isActive = true
                        
                    }, label: {
                        Image(logo)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 119, height: 43, alignment: .trailing)
                            .foregroundColor(Color(red: 0.18, green: 0.2, blue: 0.29))
                       
                    })
                    .fullScreenCover(isPresented: $isActive){
                        GetPremiumView()}
                }
            }
            
            Divider()
            .frame(width: 375, height: 2)
           .background(Color(red: 0.13, green: 0.16, blue: 0.25))
    }
}

#Preview {
    ProfileView(image:"IconsVector",title: NSLocalizedString("Get premium-string",comment:"this is the transulater forGet premium-string") ,logo:"Right")
}

