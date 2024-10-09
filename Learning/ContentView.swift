//
//  ContentView.swift
//  Learning
//
//  Created by Jeff Kranenburg on 08/10/2024.
//

import SwiftUI

struct ContentView: View {

    private var username = "jwknz"
    
    @State private var user: GitHubUser?
    @State private var repos: [GitHubUserRepo]?
    
    var body: some View {
        
        NavigationStack {
            VStack(spacing: 20) {

                AsyncImage(url: URL(string: user?.avatarUrl ?? "")) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                } placeholder: {
                    Circle()
                        .foregroundColor(.clear)
                }
                .frame(width:160, height: 160)
                
                Text(user?.login ?? "Github Usermame")
                    .bold()
                    .font(.title)
                                
                Text(user?.bio ?? "Github Bio")
                    .font(.title2)
                    .padding()
                
                Spacer()
                
                //.background(Color.red.ignoresSafeArea(edges: .vertical))
                
                List {
                    ForEach(repos ?? [], id: \.id) { row in
                        NavigationLink(destination: DetailView()) {
                            VStack(alignment: .leading) {
                                Text(row.name)
                                    .font(.headline)
                                
                                Text("is Private: \(row._private)")
                                    .font(.subheadline)
                            }
                        }
                    }
                    .listRowBackground(Color.clear)
                    
                }
                .frame( maxWidth: .infinity)
                .cornerRadius(20)
                .ignoresSafeArea(.all)
                .scrollContentBackground(.hidden)
                .listStyle(PlainListStyle())
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.red.opacity(0.6).ignoresSafeArea(edges: .vertical))
        }
//        .padding()
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background(Color.red.ignoresSafeArea(edges: .vertical))
        .task {
            do {
                user = try await getUser(username)
                repos = try await getUserPublicRepos(username)
                
            } catch GHError.invalidURL {
                
                print("Wrong URL :-)")
                
            } catch GHError.invalidData {
                
                print("Wrong DATA :-)")
                
            } catch GHError.invalidResponse {
                
                print("Wrong Response :-)")
                
            } catch {
                print("Wrong Something Else :-)")
            }
            
        }
    }
    
}

#Preview {
    ContentView()
}
