//
//  ContentView.swift
//  cw44
//
//  Created by Ritaj Alhaddad on 10/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var name = ""
   @State var words = ["kinder","cheetos","pepsi","indomie","tomato"]
    
    var body: some View {
        VStack {
            List(words,id:\.self){ word in Text (word)
            HStack{
                Image(word)
                    .resizable()
                   .frame(width: 60, height: 60)
                }
            }
        TextField("Enter the item name ",text: $name)
                .frame(width: 200, height: 45)
                .multilineTextAlignment(.center)
            
                Spacer()
                Button(action: {words.append(words.randomElement() ?? "") }, label: {Image(systemName: "questionmark")})
                Spacer()
            Button(action:{ words.append(name)}, label: {Text("Add")})
        Spacer()
            Button(action: {words.remove(at: 0)}, label: {Text("remove")})
            Spacer()
        
        }
            }
        }
      
        



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
