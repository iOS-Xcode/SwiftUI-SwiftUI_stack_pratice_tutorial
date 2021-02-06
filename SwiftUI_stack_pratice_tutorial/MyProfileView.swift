//
//  MyProfileView.swift
//  SwiftUI_stack_pratice_tutorial
//
//  Created by Seokhyun Kim on 2020-10-14.
//

import SwiftUI

struct MyProfileView : View {
    @Binding var isNavigationBarHidden: Bool
     
     init(isNavigationBarHidden: Binding<Bool> = .constant(false)) {
         
         _isNavigationBarHidden = isNavigationBarHidden
         
     }
    var body: some View {
        //Alreadly wrapped previous view(rootview)
        ScrollView {
            VStack {
                MyCircleImageView(imageString: "myImage")        .padding(.vertical, 20)            //Spacer()
                Text("Developer Seokhyun Kim")
                    .fontWeight(.bold)
                    .font(.title)
                Spacer().frame(height: 20)
                Text("Please Study hard")
                    .fontWeight(.medium)
                    .font(.subheadline)
                
                HStack {
                    Text("My site")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .padding(20)
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                    Text("Talk to me")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .padding(20)
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                }.padding(.top, 30)
                Spacer()
                
            }
            
        } //SCrollView
        .navigationBarTitle("My Profile", displayMode: .large)
        .navigationBarItems(trailing: NavigationLink(destination : Text("Configuration View")
            .font(.largeTitle)
            .fontWeight(.bold)
        ){
            //Configuration of NavigationLink
            Image(systemName: "gearshape.fill")
                .font(.largeTitle)
                .foregroundColor(.black)
        })
        .onAppear{
            self.isNavigationBarHidden = false
        }
    }
}

struct MyProfileView_Previews: PreviewProvider {
    static var previews: some View {
        MyProfileView()
    }
}
