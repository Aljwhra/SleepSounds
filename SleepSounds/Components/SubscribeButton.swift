import SwiftUI

struct SubscribeButton: View {
    @State private var isActive = false
    
    var body: some View {
        
        ZStack{
            
            Button(action:{
                isActive = true
            },
                   
                   label: {
                
                ZStack{
                    
                    HStack{
                        
                        Text("Subscribe for $%/week-string")
                            .font(Font.custom("SF Pro Rounded", size: 17)
                                .weight(.semibold))
                            .foregroundColor(.white)
                            .frame(width: 311, height: 50, alignment: .center)
                            .background(.secondary)
                            .cornerRadius(100)
                    }
                }
            })
            .fullScreenCover(isPresented: $isActive){
                LogineView()}
        }
        .padding(.top)
    }
}
#Preview {
    SubscribeButton()
}
