

import SwiftUI

struct ContentView: View {
    var body: some View {
        //여러개의 텍스트를 넣고 싶을땐, VStack 또는 HStack을 넣는다.
        VStack(alignment:.center) { //밑에 다른것들도 함께 정렬하고싶을때 / alignment
            //HStack은 수평, VStack은 수직 정렬이다.
            
            
            Image("russia") //사진이름
                .resizable() //크기조정
                .aspectRatio(contentMode: .fit) //종횡비
                .cornerRadius(50) //코너반경
                .padding(.all)
            //.clipShape(Circle()) //클립모양
            
            Text("Hello, SwiftUI!")
                .font(.largeTitle)
                .foregroundColor(.green)
            
            
            
            Text("Second line")
                .font(.title)
                .foregroundColor(.yellow)
            
            Text("Hello")
                .font(.title)
                .fontWeight(.bold)
                .padding()
                .background(Color.purple)
                .cornerRadius(40)
                .foregroundColor(.white)
                .padding(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 40)
                        .stroke(Color.purple, lineWidth: 5))
            
            HStack {
                Text("Left Side")
                    .padding()  //주변이 커짐
                    .background(Color.purple)
                    .foregroundColor(.white)
                
                Text("Right Side")
                    .fontWeight(.bold)
                    .font(.title)
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .padding(10)
                    .border(Color.green, width: 5) //width:두깨, border:경계
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
