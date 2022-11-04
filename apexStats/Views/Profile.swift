//
//  Profile.swift
//  apexStats
//
//  Created by Tyler Kruer on 9/28/22.
//

import SwiftUI

struct Profile: View {
    @AppStorage("userAccount") var userAccount: String = ""
    @AppStorage("userPlatform") var userPlatform: String = ""
    @ObservedObject private var getData = GetStats()
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [.gray, .black]), center: .bottom, startRadius: 2, endRadius: 900)
                    .ignoresSafeArea()
            ScrollView {
                VStack {
                    HStack {
                        Text("\(userAccount)")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .bold()
                        Spacer()
                        Circle()
                            .fill(.white)
                            .frame(width: 75)
                    }.padding()
                    VStack {
                        HStack {
                            Image(systemName: "logo.playstation")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                            Image(systemName: "circle.fill")
                                .font(.title3)
                                .foregroundColor(.green)
                            Spacer()
                            Button(action: {
                               
                            }, label: {
                                Image(systemName: "arrow.clockwise")
                                    .font(.title3)
                                    .foregroundColor(.white)
                            }).padding()
                        }.padding()
                    }
                    VStack {
                        HStack {
                            Text("Rank")
                                .font(.title3)
                                .foregroundColor(.white)
                                .bold()
                            Spacer()
                        }.padding()
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.black)
                                .frame(width: 350, height: 300)
                            VStack {
                                Text("Rank Image")
                                    .foregroundColor(.white)
                                HStack {
                                    Text("Rank Score:")
                                        .bold()
                                        .foregroundColor(.white)
                                    Spacer()
                                    Text("Loading...")
                                        .foregroundColor(.white)
                                }.padding()
                                HStack {
                                    Text("Rank Name:")
                                        .bold()
                                        .foregroundColor(.white)
                                    Spacer()
                                }.padding()
                                HStack {
                                    Text("Rank Division:")
                                        .bold()
                                        .foregroundColor(.white)
                                    Spacer()
                                }.padding()
                                HStack {
                                    Text("Rank Season:")
                                        .bold()
                                        .foregroundColor(.white)
                                    Spacer()
                                }.padding()
                            }.padding()
                        }
                    }
                    VStack {
                        HStack {
                            Text("Arena")
                                .font(.title3)
                                .foregroundColor(.white)
                                .bold()
                            Spacer()
                        }.padding()
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.black)
                                .frame(width: 350, height: 300)
                            VStack {
                                Text("Arena Image")
                                    .foregroundColor(.white)
                                HStack {
                                    Text("Rank Score:")
                                        .bold()
                                        .foregroundColor(.white)
                                    Spacer()
                                }.padding()
                                HStack {
                                    Text("Arena Name:")
                                        .bold()
                                        .foregroundColor(.white)
                                    Spacer()
                                }.padding()
                                HStack {
                                    Text("Arena Division:")
                                        .bold()
                                        .foregroundColor(.white)
                                    Spacer()
                                }.padding()
                                HStack {
                                    Text("Arena Season:")
                                        .bold()
                                        .foregroundColor(.white)
                                    Spacer()
                                }.padding()
                            }.padding()
                        }
                    }
                    VStack {
                        HStack {
                            Text("Battle Pass")
                                .font(.title3)
                                .foregroundColor(.white)
                                .bold()
                            Spacer()
                        }.padding()
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.black)
                                .frame(width: 350, height: 300)
                            VStack {
                                Text("Battle Pass Image")
                                    .foregroundColor(.white)
                                HStack {
                                    Text("Level:")
                                        .bold()
                                        .foregroundColor(.white)
                                    Spacer()
                                }.padding()
                                HStack {
                                    Text("History:")
                                        .bold()
                                        .foregroundColor(.white)
                                    Spacer()
                                }.padding()
                                HStack {
                                    Text("Badges:")
                                        .bold()
                                        .foregroundColor(.white)
                                    Spacer()
                                }.padding()
                                HStack {
                                    Text("Level Prestige:")
                                        .bold()
                                        .foregroundColor(.white)
                                    Spacer()
                                }.padding()
                            }.padding()
                        }
                    }
                    VStack {
                        HStack {
                            Text("Realtime")
                                .font(.title3)
                                .foregroundColor(.white)
                                .bold()
                            Spacer()
                        }.padding()
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.black)
                                .frame(width: 350, height: 350)
                            VStack {
                                Text("Battle Pass Image")
                                    .foregroundColor(.white)
                                HStack {
                                    Text("Online:")
                                        .bold()
                                        .foregroundColor(.white)
                                    Spacer()
                                }.padding()
                                HStack {
                                    Text("In Game:")
                                        .bold()
                                        .foregroundColor(.white)
                                    Spacer()
                                }.padding()
                                HStack {
                                    Text("Can Join:")
                                        .bold()
                                        .foregroundColor(.white)
                                    Spacer()
                                }.padding()
                                HStack {
                                    Text("Party Full:")
                                        .bold()
                                        .foregroundColor(.white)
                                    Spacer()
                                }.padding()
                                HStack {
                                    Text("Selected Legend:")
                                        .bold()
                                        .foregroundColor(.white)
                                    Spacer()
                                }.padding()
                            }.padding()
                        }
                    }
                    VStack {
                        HStack {
                            Text("Legends")
                                .font(.title3)
                                .foregroundColor(.white)
                                .bold()
                            Spacer()
                        }.padding()
                        ScrollView(.horizontal) {
                            HStack {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .fill(.black)
                                        .frame(width: 350, height: 350)
                                    VStack {
                                        Text("Battle Pass Image")
                                            .foregroundColor(.white)
                                        HStack {
                                            Text("Online:")
                                                .bold()
                                                .foregroundColor(.white)
                                            Spacer()
                                        }.padding()
                                        HStack {
                                            Text("In Game:")
                                                .bold()
                                                .foregroundColor(.white)
                                            Spacer()
                                        }.padding()
                                        HStack {
                                            Text("Can Join:")
                                                .bold()
                                                .foregroundColor(.white)
                                            Spacer()
                                        }.padding()
                                        HStack {
                                            Text("Party Full:")
                                                .bold()
                                                .foregroundColor(.white)
                                            Spacer()
                                        }.padding()
                                        HStack {
                                            Text("Selected Legend:")
                                                .bold()
                                                .foregroundColor(.white)
                                            Spacer()
                                        }.padding()
                                    }.padding()
                                }
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .fill(.black)
                                        .frame(width: 350, height: 350)
                                    VStack {
                                        Text("Battle Pass Image")
                                            .foregroundColor(.white)
                                        HStack {
                                            Text("Online:")
                                                .bold()
                                                .foregroundColor(.white)
                                            Spacer()
                                        }.padding()
                                        HStack {
                                            Text("In Game:")
                                                .bold()
                                                .foregroundColor(.white)
                                            Spacer()
                                        }.padding()
                                        HStack {
                                            Text("Can Join:")
                                                .bold()
                                                .foregroundColor(.white)
                                            Spacer()
                                        }.padding()
                                        HStack {
                                            Text("Party Full:")
                                                .bold()
                                                .foregroundColor(.white)
                                            Spacer()
                                        }.padding()
                                        HStack {
                                            Text("Selected Legend:")
                                                .bold()
                                                .foregroundColor(.white)
                                            Spacer()
                                        }.padding()
                                    }.padding()
                                }
                            }.padding()

                        }
                    }
                    VStack {
                        HStack {
                            Text("Damage")
                                .font(.title3)
                                .foregroundColor(.white)
                                .bold()
                            Spacer()
                        }.padding()
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.black)
                                .frame(width: 350, height: 300)
                            VStack {
                                Text("Battle Pass Image")
                                    .foregroundColor(.white)
                                HStack {
                                    Text("Total Damage:")
                                        .bold()
                                        .foregroundColor(.white)
                                    Spacer()
                                }.padding()
                                HStack {
                                    Text("Total Enemies Scanned:")
                                        .bold()
                                        .foregroundColor(.white)
                                    Spacer()
                                }.padding()
                                HStack {
                                    Text("Special Event Skills:")
                                        .bold()
                                        .foregroundColor(.white)
                                    Spacer()
                                }.padding()
                                HStack {
                                    Text("K/D:")
                                        .bold()
                                        .foregroundColor(.white)
                                    Spacer()
                                }.padding()
                            }.padding()
                        }
                    }
                }
            }
            .onAppear {
                getData.getStats(playerName: userAccount, playerPlatform: userPlatform)
            }
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
