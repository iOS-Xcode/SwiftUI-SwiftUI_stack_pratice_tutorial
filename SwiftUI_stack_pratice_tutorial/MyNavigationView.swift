//
//  MyNavigationView.swift
//  SwiftUI_stack_pratice_tutorial
//
//  Created by Seokhyun Kim on 2020-10-14.
//

import SwiftUI

struct MyNavigationView : View {
    var body: some View {
        NavigationView {
                    MyList()
                //default Large Title
                .navigationBarTitle("Hello!", displayMode: .large)
                        //leading is left
                        .navigationBarItems(leading: Button(action: {
                            //Just part of action
                            print("hoho")
                        }){
                            //Configuration of button
                            Text("haha")
                        }
                        ,trailing: NavigationLink(destination:Text("pushView")){
                            Image(systemName: "bookmark.fill")
                                .font(.largeTitle)
                                .foregroundColor(.green)
                        }
        )}
    }
}

struct MyNavigationView_Previews: PreviewProvider {
    static var previews: some View {
            MyNavigationView()
        }
    }
