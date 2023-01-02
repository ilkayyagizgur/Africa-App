//
//  ExternalWeblinkView.swift
//  Africa
//
//  Created by Ada Yagiz Gur on 28.12.2022.
//

import SwiftUI

struct ExternalWeblinkView: View {
    //MARK: - PROPERTIES
    let animal: Animal
    
    //MARK: - BODY
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Link(destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!, label: {
                        Text(animal.name)
                        Image(systemName: "arrow.up.right.square")
                    })
                }
                .foregroundColor(.accentColor)
            }//: HSTACK
        }//: GROUPBOX
    }
}
//MARK: - PEWVIEW
struct ExternalWeblinkView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        ExternalWeblinkView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
