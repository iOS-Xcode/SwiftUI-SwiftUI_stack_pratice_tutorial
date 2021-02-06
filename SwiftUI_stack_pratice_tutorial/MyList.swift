//
//  MyList.swift
//  SwiftUI_stack_pratice_tutorial
//
//  Created by Seokhyun Kim on 2020-10-13.
//

import SwiftUI

struct MyList : View {
    @Binding var isNavigationBarHidden: Bool
    init(isNavigationBarHidden: Binding<Bool> = .constant(false)) {
        if #available(iOS 14.0, *) {
            
        } else {
            UITableView.appearance().tableFooterView = UIView()
        }
        UITableView.appearance().separatorStyle = .none
        //_ is binding
        _isNavigationBarHidden = isNavigationBarHidden
    }
    var body: some View {
        //        List {
        //            Text("List")
        //            Text("List")
        //            Text("List")
        //            Text("List")
        //
        //        }
        //        List {
        //            //must use value of id in ForEach
        //            ForEach(1...10, id: \.self) {
        //                Text("List \($0)")
        //            }
        //        }
        List {
            Section(header: Text("To do list Today")
                        .font(.headline).foregroundColor(.black), footer: Text("footer")) {
                ForEach(1...3, id: \.self) { itemIndex in
                    //Text("List \(itemIndex)")
                    MyCard(icon: "tray.fill", title: "책상정리하기", start: "AM 5", end: "AM 6", bgColor: Color.blue)
                }
            }
            //Margin in List
            //            .listRowInsets(EdgeInsets.init())
            .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
            Section(header: Text("To do list tomorrow")
                        .font(.headline).foregroundColor(.black)
            ) {
                ForEach(1...20, id: \.self) { itemIndex in
                    //Text("List \(itemIndex)")
                    MyCard(icon: "tray.fill", title: "책상정리하기", start: "AM 5", end: "AM 6", bgColor: Color.green)
                }
            }
            .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
            .listRowBackground(Color.yellow)
        }
        .listStyle(GroupedListStyle())
        .navigationBarTitle("My Task")
        //        .listStyle(PlainListStyle())
        .onAppear{
            self.isNavigationBarHidden = false
        }
    } // NavigationView
}

struct MyList_Previews: PreviewProvider {
    static var previews: some View {
        MyList()
    }
}
