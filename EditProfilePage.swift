//
//  EditProfilePage.swift
//  Social Media App
//
//  Created by StudentPM on 5/7/25.
//

import SwiftUI

struct EditProfilePage: View {
    @State private var name = ""
    @State private var username = ""
    @State private var email = ""
    @State private var phone = ""
    @State private var bio = ""
    @Environment(\.presentationMode) var presentationMode
    // This is to make the editprofilepage go back to the accountpage
    // Added to save and cancel button for it to work
    
    var body: some View {
        NavigationView{
            ZStack{
                Image("LongNails")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                HStack{
                    
                    Spacer()
                }
                .padding(.horizontal)
                
                
                VStack(spacing: 20) {
                    Text("Edit Profile")
                        .font(.title)
                        .bold()
                        .foregroundColor(.init(red: 15, green: 16, blue: 20))
                    
                    Image("NailGirl")
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .frame(width:85, height: 85)
                        .clipShape(Circle())
                    
                    //create group to put all the Textfield in
                    VStack(spacing: 20){
                        TextField("Name", text: $name)
                            .padding(.horizontal, 90)
                            .frame(height:25)
                        TextField("Username", text: $username)
                            .padding(.horizontal, 90)
                            .frame(height:25)
                        TextField("Email", text: $email)
                            .padding(.horizontal, 90)
                            .frame(height:25)
                        TextField("Phone", text: $phone)
                            .padding(.horizontal, 90)
                            .frame(height:25)
                        TextField("Bio", text: $bio)
                            .padding(.horizontal, 90)
                            .frame(height:25)
                    }
                    
                    
                    //fix the texts so they dont be in corner
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                    
                    HStack(spacing: 30){
                        Button("Save Changes"){
                            // do the save
                            presentationMode.wrappedValue.dismiss()
                        }
                        
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(9)
                        
                        Button("Cancel"){
                            //do the cancel
                            presentationMode.wrappedValue.dismiss()
                        }
                        
                        .padding()
                        .background(Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(9)
                    }
                    //Spacer()
                    //made it goes up too much
                }
                
                .padding()
            }
        }
    }
}

#Preview {
    EditProfilePage()
}
