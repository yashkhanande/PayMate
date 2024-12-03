
import SwiftUI

struct loginView: View {
    var body: some View {
      
        ZStack{
           
            NavigationView {
              
                ZStack{
                    Color.blue.opacity(0.9).ignoresSafeArea()
                    VStack{
                        Spacer()
                        NavigationLink(destination: parentView()){
                            HStack{
                                Image(systemName: "person.crop.circle")
                                    .font(.largeTitle)
                                
                                Text("Login As Parents")
                                    .font(.title)
                            }
                            
                                
                        }.padding()
                            .frame(width:350,height: 100)

                                .background(Color.green.opacity(0.6))
                                .clipShape(Capsule())
                                
                        NavigationLink(destination: childView()){
                            HStack{
                                Image(systemName: "person.fill")
                                    .font(.title)
                                    .font(.largeTitle)
                                Text("Login As Child")
                                    .font(.title)
                                
                            } .padding()
                                .frame(width: 350,height: 100)
                                .background(Color.white.opacity(0.5))
                                .clipShape(Capsule())
                          
                          
                            
                        }.padding()
                    
                        Spacer()
                    }
                    .accentColor(.white)
                    .bold()
                }
         
                
            }
        
        }
        
        
    
       
        
    }
                       }
#Preview {
    loginView()
}
