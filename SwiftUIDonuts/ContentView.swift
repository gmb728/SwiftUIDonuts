//
//  ContentView.swift
//  SwiftUIDonuts
//
//  Created by Chang Sophia on 3/21/20.
//  Copyright © 2020 Chang Sophia. All rights reserved.
//

import SwiftUI

struct ContentView: View {
   
    var body: some View {
     
            ZStack{
                      Path() { path in
                          path.move(to:CGPoint(x:0, y:170))
                          path.addLine(to: CGPoint(x:450, y:170))
                          path.move(to:CGPoint(x:0, y:330))
                          path.addLine(to: CGPoint(x:450, y:330))
                          path.move(to:CGPoint(x:0, y:490))
                          path.addLine(to: CGPoint(x:450, y:490))
                          path.move(to:CGPoint(x:0, y:650))
                          path.addLine(to: CGPoint(x:450, y:650))
                          path.move(to:CGPoint(x:140, y:170))
                          path.addLine(to: CGPoint(x:140, y:650))
                          path.move(to:CGPoint(x:290, y:170))
                          path.addLine(to: CGPoint(x:290, y:650))
                      }
                      .stroke(Color(red:215/255, green:215/255, blue:215/255), lineWidth:10)
            
        VStack(spacing:-300){
            
//Line1 Angular Gradient
            HStack(alignment: .center, spacing:50){
        Circle()
            .stroke(AngularGradient(gradient: Gradient(colors: [Color(red:248/255, green: 249/255, blue: 202/255), Color(red:192/255, green: 235/255, blue: 196/255), Color(red:248/255, green: 249/255, blue: 202/255)]), center: .trailing), lineWidth:40)
            .frame(width:100)
            Circle()
                .stroke(AngularGradient(gradient: Gradient(colors: [Color(red:248/255, green: 249/255, blue: 202/255), Color(red:254/255, green: 208/255, blue: 209/255),Color(red:248/255, green: 249/255, blue: 202/255)]), center: .leading), lineWidth:40)
            .frame(width:100)
            Circle()
            .stroke(AngularGradient(gradient: Gradient(colors: [Color(red:229/255, green: 181/255, blue: 223/255), Color(red:171/255, green: 217/255, blue: 246/255),Color(red:229/255, green: 181/255, blue: 223/255)]), center: .leading), lineWidth:40)
            .frame(width:100)
            }
//Line2 trim
        HStack(alignment: .center, spacing:50){
           ZStack {
           Circle()
              .trim(from: 0, to: 0.33)
              .stroke(Color(red:248/255, green: 249/255, blue:202/255), lineWidth:40)
              .frame(width:100)
            Circle()
                .trim(from: 0.33, to: 0.66)
            .stroke(Color(red:254/255, green: 208/255, blue:209/255), lineWidth:40)
            .frame(width:100)
            Circle()
                .trim(from: 0.66, to: 1)
            .stroke(Color(red:229/255, green: 181/255, blue:223/255), lineWidth:40)
            .frame(width:100)
            }
            
                
        ZStack {
            Circle()
               .trim(from: 0, to: 0.2)
               .stroke(Color(red:229/255, green: 181/255, blue:223/255), lineWidth:40)
               .frame(width:100)
            Circle()
                .trim(from: 0.2, to: 0.4)
               .stroke(Color(red:254/255, green: 208/255, blue:209/255), lineWidth:40)
               .frame(width:100)
            Circle()
                .trim(from: 0.4, to: 0.6)
            .stroke(Color(red:248/255, green: 249/255, blue:202/255), lineWidth:40)
            .frame(width:100)
            Circle()
                .trim(from: 0.6, to: 0.8)
            .stroke(Color(red:171/255, green: 217/255, blue:246/255), lineWidth:40)
            .frame(width:100)
            Circle()
                .trim(from: 0.8, to: 1.0)
            .stroke(Color(red:166/255, green: 171/255, blue:229/255), lineWidth:40)
            .frame(width:100)
        }
       
            ZStack {
                Circle()
                   .trim(from: 0, to: 0.5)
                   .stroke(Color(red:229/255, green: 181/255, blue:223/255), lineWidth:40)
                   .frame(width:100)
                Circle()
                    .trim(from: 0.5, to: 1)
                    .stroke(Color(red:171/255, green: 217/255, blue:246/255), lineWidth:40)
                    .frame(width:100)
                      
                       
                       }
            }
//Line3 LinearGradient
            
            HStack(alignment: .center, spacing:50){
                Circle()
                .stroke(LinearGradient(gradient: Gradient(colors: [Color(red:229/255, green: 181/255, blue: 223/255), Color(red:254/255, green: 208/255, blue: 209/255),Color(red:248/255, green: 249/255, blue: 202/255),Color(red:192/255, green: 235/255, blue: 196/255), Color(red:171/255, green: 217/255, blue: 246/255),Color(red:166/255, green: 171/255, blue: 229/255)]), startPoint: .bottom, endPoint: .top), lineWidth:40)
                      .frame(width:100)
                Circle()
                        .stroke(LinearGradient(gradient: Gradient(colors: [Color(red:229/255, green: 181/255, blue: 223/255), Color(red:254/255, green: 208/255, blue: 209/255),Color(red:248/255, green: 249/255, blue: 202/255),Color(red:192/255, green: 235/255, blue: 196/255), Color(red:171/255, green: 217/255, blue: 246/255),Color(red:166/255, green: 171/255, blue: 229/255)]), startPoint: .trailing, endPoint: .leading), lineWidth:40)
                           .frame(width:100)
                Circle()
                 .stroke(LinearGradient(gradient: Gradient(colors: [Color(red:229/255, green: 181/255, blue: 223/255), Color(red:254/255, green: 208/255, blue: 209/255),Color(red:248/255, green: 249/255, blue: 202/255),Color(red:192/255, green: 235/255, blue: 196/255), Color(red:171/255, green: 217/255, blue: 246/255),Color(red:166/255, green: 171/255, blue: 229/255)]), startPoint: .trailing, endPoint: .topLeading), lineWidth:40)
                    .frame(width:100)
            }
    }
       
        .padding()
}
    
 }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

