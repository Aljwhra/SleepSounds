
import SwiftUI

struct OnBoarding:Identifiable {
    var id = UUID()
    var image:String
    var title:String
    var subTitle:String
    
}

struct OnBoardingView : View {
    @Environment(\.locale) var locale
    
    let OnBoardingArray : [OnBoarding ] = [
        OnBoarding(image: "Image",
                   title: NSLocalizedString("Exclusive-string", comment: "this is the transulater for Exclusive-string"),
                   subTitle:NSLocalizedString("We have an author's library of sounds that you will not find anywhere else-string",comment:"this is the transulater for We have an author's library of sounds that you will not find anywhere else-string")),
        
        OnBoarding(image: "Image 1",
                   title: NSLocalizedString("Relax sleep sounds", comment:"this is the transulater for Relax sleep sounds-string"),
                   subTitle: NSLocalizedString("Our sounds will help to relax and improve your sleep health-string",comment:"this is the transulater for Our sounds will help to relax and improve your sleep health-string")),
        
        OnBoarding(image: "Image 2",
                   title: NSLocalizedString ("Story for kids-string",comment:"this is the transulater for Story for kids-string"),
                   subTitle:NSLocalizedString( "Famous fairy tales with soothing sounds will help your children fall asleep faster-string",comment: "this is the transulater for Famous fairy tales with soothing sounds will help your children fall asleep faster-string"))
    ]
    
    @State var currentPage = 0
    
    var body: some View {
        
        ZStack{
            
            Color.back
                .ignoresSafeArea()
            
            VStack(spacing:20){
                
                TabView(selection: $currentPage){
                    
                    ForEach(0..<3){ i in
                        
                        VStack{
                            
                            Image(OnBoardingArray[i].image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 271.20135, height: 222.44945)
                                .padding()
                            
                            Text(OnBoardingArray[i].title)
                                .font(.title)
                                .bold()
                                .multilineTextAlignment(.center)
                                .foregroundColor(.white)
                                .frame(width: 311, alignment: .center)
                              
                            
                            Text(OnBoardingArray[i].subTitle)
                                .font(.headline)
                                .foregroundStyle(.gray)
                                .multilineTextAlignment(.center)
                                .padding()
                        }
                    }
                }
                .tabViewStyle(PageTabViewStyle.init(indexDisplayMode: .never))
                
                  HStack{
                    
                    ForEach (0..<3) { i in
                        
                        if currentPage  ==  i {
                            
                            Circle()
                                .foregroundColor(.blue)
                                . frame(width: 10)
                            
                        } else {
                            
                            Circle()
                                .frame(width: 10)
                                .foregroundColor(.primary)
                        }
                    }
                }
                Spacer()
                
                    VStack{
                    
                    if currentPage != 2{
                        
                        OnBoardingCustom()
                    } else {
                        
                        OnBoardingViewCustom()
                    }
                }
            }
        }
    }
}
#Preview {
    OnBoardingView()
        .environmentObject(AudioManager())
    
}



