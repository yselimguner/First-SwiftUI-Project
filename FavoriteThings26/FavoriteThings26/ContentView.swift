//
//  ContentView.swift
//  FavoriteThings26
//
//  Created by Yavuz Güner on 26.02.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //Bunu eklemeyi sakın unutma alttakini....Yoksa altta yazdığımız kodları aktifleştirmiyor.
        NavigationView{
        List {
            ForEach(myFavorites){favorite in
                Section(header: Text(favorite.title)) {
                    ForEach(favorite.elements){
                        element in
                        //Navigation Link'i buraya yazma sebebim her satırda geriye ileriye gidiş olsun diyeydi. Yerini değiştirirsem eğer Favorite Movies ve Books'a da gelir.
                        NavigationLink(destination: DetailsView(chosenFavoriteElement: element)) {
                            Text(element.name)
                        }
                        
                    }
                }
            }
            .navigationBarTitle(Text("My Favorite Things"))
        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
