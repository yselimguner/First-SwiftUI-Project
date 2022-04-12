//
//  DetailsView.swift
//  FavoriteThings26
//
//  Created by Yavuz Güner on 26.02.2022.
//

import SwiftUI



struct DetailsView: View {
    
    var chosenFavoriteElement : FavoriteElements
    
    var body: some View {
        VStack{
            Image(chosenFavoriteElement.imageName).resizable().aspectRatio( contentMode: ContentMode.fit).frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.5).padding()
            Text(chosenFavoriteElement.name).font(.largeTitle).bold().padding()
            Text(chosenFavoriteElement.description).font(.largeTitle).bold()
        }
        
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(chosenFavoriteElement: jamesBond)
    }
}
