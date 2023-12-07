import SwiftUI

struct PremiumView: View {
    var body: some View {
    
        HStack{
            
            Image("icons8-music_library")
                .resizable()
                .scaledToFit()
                .frame(width: 28, height: 28)
                .padding(.trailing)
            
            Text("Unlock 50+ Songs-string")
                .font(
                    Font.custom("SF Pro Rounded", size: 20)
                        .weight(.bold)
                )
                .foregroundColor(.white)
                .frame(width: 174, alignment: .leading)
        }
        
        HStack{
            Image("icons8-ultrasound")
                .resizable()
                .scaledToFit()
                .frame(width: 28, height: 28)
                .padding(.trailing)
            
            Text("Unlock All Sounds-string")
                .font(Font.custom("SF Pro Rounded", size: 20)
                .weight(.bold))
                .foregroundColor(.white)
                .frame(width: 171, alignment: .leading)
        }
        
        HStack{
            
            Image("icons8-chicago")
                .resizable()
                .scaledToFit()
                .frame(width: 28, height: 28)
                .padding(.leading)
            
            Text("Unlock All Fairy Tales-string")
                .font(Font.custom("SF Pro Rounded", size: 20)
                .weight(.bold))
                .foregroundColor(.white)
                .frame(width: 196, alignment: .leading)
                .padding(.leading)
        }
    }
    
    }


#Preview {
    PremiumView()
}
