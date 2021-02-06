//
//  ContentView.swift
//  SwiftUI_stack_pratice_tutorial
//
//  Created by Seokhyun Kim on 2020-10-12.
//

import SwiftUI

struct ContentView: View {
    @State var isNavigationBarHidden : Bool = false
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottomTrailing) {
                VStack(alignment: .leading, spacing : 0) {
                    //mark $ in binding
                    HStack {
                        NavigationLink(
                            destination: MyList(isNavigationBarHidden: self.$isNavigationBarHidden)
                            ) {
                            Image(systemName: "line.horizontal.3")
                                .font(.largeTitle)
                                .foregroundColor(.black)
                            }
                        Spacer()
                        NavigationLink(
                            destination: MyProfileView(isNavigationBarHidden: self.$isNavigationBarHidden)
                            ) {
                            Image(systemName: "person.crop.circle.fill")
                                .font(.largeTitle)
                                .foregroundColor(.black)
                            }

                    }.padding(20)
                    //For custome title without navigation Title
//                    Text("Work to do")
//                        .font(.system(size: 40))
//                        .fontWeight(.black)
//                        .padding(.horizontal, 20)
                    ScrollView {
                        VStack {
                            MyProjectCard()
                            MyBasicCard()
                            MyCard(icon: "tray.fill", title: "책상정리", start: "AM 6:00", end: "AM 10:00", bgColor: Color.purple)
                            MyCard(icon: "cart.fill", title: "쇼핑하기", start: "AM 6:00", end: "AM 10:00", bgColor: Color.purple)
                            MyCard(icon: "tv.fill", title: "TV보기", start: "AM 6:00", end: "AM 10:00", bgColor: Color.purple)
                            
                        }.padding()
                    }
                }
    //            .padding(.top, 20)
    //            .padding(.horizontal, 20)

                Circle()
                    .foregroundColor(.yellow)
                    .frame(width: 60, height: 60)
                    .overlay(
                        Image(systemName: "plus"))
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .padding(10)
                    .shadow(radius: 20)
        } //Zstack
            .navigationBarTitle("Back")
            .navigationBarHidden(self.isNavigationBarHidden)
            //State 이므로 뷰를 다시 그림.
            //When NavigationView apper

            .onAppear{
                self.isNavigationBarHidden = true
            }
        } //NavigationView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
