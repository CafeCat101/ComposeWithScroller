//
//  ContentView.swift
//  ComposeWithScroller
//
//  Created by Leonore Yardimli on 2022/2/26.
//

import SwiftUI

struct ContentView: View {
	var options = ["This","is","the","sentense"]
	var body: some View {
		VStack {
			HStack {
				Spacer()
				Image("TestImage")
					.resizable()
					.aspectRatio(contentMode: .fit)
					.shadow(color:.black, radius: 3, x:1, y: 1)
					.frame(width:500, height:500)
				Spacer()
			}
			
			
			Text("This is the sentense.")
				.font(.system(size:50))
			
			ScrollView {
				VStack(alignment: .leading) {
					ForEach(0..<4) { index in
						Button(action:{
							
						}){
							Text(options[index])
								.font(.system(size:50))
								.padding(10)
								.foregroundColor(Color.black)
								.background(
									RoundedRectangle(cornerRadius: 25, style: .continuous)
										.strokeBorder(Color.black,lineWidth: 1)
										.background(
											RoundedRectangle(cornerRadius: 25, style: .continuous)
												.foregroundColor(Color.white))
								)
						}.buttonStyle(PlainButtonStyle())
					}
				}
			}
			
			Spacer()
				.frame(height:50)
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
