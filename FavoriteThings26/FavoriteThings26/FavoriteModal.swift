//
//  FavoriteModal.swift
//  FavoriteThings26
//
//  Created by Yavuz Güner on 26.02.2022.
//

import Foundation

struct FavoriteModal : Identifiable //Identifiable yaparsak kendi anlayacak herşeyi bana Id falan sormayacak
{
    var id = UUID()
    var title : String
    var elements : [FavoriteElements]
}

struct FavoriteElements : Identifiable {
    var id = UUID()
    var name : String
    var imageName : String
    var description : String
}
//FAVORITE MOVIES
let jamesBond = FavoriteElements(name: "Casino Royale", imageName: "casinoroyale", description: "2006   ")
let jasonBourne = FavoriteElements(name: "The Bourne Ultimatum", imageName: "bourneultimatum", description: "2007")
let wanted = FavoriteElements(name: "Wanted", imageName: "wanted", description: "2008")
let spygame = FavoriteElements (name: "Spy Game", imageName: "spygame", description: "2001")
let shawshankredemption = FavoriteElements(name: "The Shawshank Redemption", imageName: "shawshankredemption", description: "1994")

//FAVORITE BOOKS
let dortUcIkiBir = FavoriteElements(name: "4 3 2 1", imageName: "4321", description: "Paul Auster")
let kumandaniOldurmek = FavoriteElements (name: "Kumandanı Öldürmek", imageName: "kumandanioldurmek", description: "Haruki Murakami")
let yabanci = FavoriteElements (name: "Yabancı ", imageName: "yabancı", description: "Albert Camus")
let fahrenheiht451 = FavoriteElements(name: "Fahrenheit 451", imageName: "fahrenheit451", description: "Ray Brandbury")


let favoriteMovies = FavoriteModal(title: "Favorite Movies", elements: [jamesBond,jasonBourne,wanted,spygame,shawshankredemption])
let favoriteBooks = FavoriteModal(title: "Favorite Books", elements: [dortUcIkiBir,kumandaniOldurmek,yabanci,fahrenheiht451])


let myFavorites = [favoriteMovies,favoriteBooks]
