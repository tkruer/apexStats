//
//  Home.swift
//  apexStats
//
//  Created by Tyler Kruer on 9/28/22.
//

import SwiftUI

struct Home: View {
    @AppStorage("userAccount") var userAccount: String = ""
    @State private var showingSheetSafari: Bool = false
    @ObservedObject private var getData = GetStats()
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [.gray, .black]), center: .bottom, startRadius: 2, endRadius: 900)
                    .ignoresSafeArea()
            ScrollView {
                VStack {
                    HStack {
                        VStack {
                            Text("Welcome Back\n\(userAccount) !")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                                .bold()
                        }
                        Spacer()
                    }.padding()
                }
                VStack {
                    HStack {
                        Text("News")
                            .font(.title)
                            .foregroundColor(.white)
                            .bold()
                        Spacer()
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "arrow.clockwise")
                                .foregroundColor(.white)
                        }).padding()
                    }.padding()
                    ScrollView(.horizontal) {
                        HStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(.black)
                                    .frame(width: 250, height: 200)
                                VStack {
                                    HStack {
                                        Text("Title")
                                            .foregroundColor(.white)
                                            .bold()
                                        Spacer()
                                    }.padding()
                                    Image(systemName: "house")
                                        .foregroundColor(.white)
                                    Text("Description")
                                        .foregroundColor(.white)
                                    Button(action: {
                                        self.showingSheetSafari = true
                                    }, label: {
                                        HStack {
                                            Image(systemName: "book.circle")
                                                .foregroundColor(.black)
                                            Text("Read More")
                                                .foregroundColor(.black)
                                        }
                                    })
                                    .sheet(isPresented: $showingSheetSafari) {
                                        NavigationView {
                                            safariViewPopUp(url: "https://apple.com")
                                                .toolbar {
                                                    ToolbarItem(placement: .primaryAction) {
                                                        Button(action: {
                                                            self.showingSheetSafari = false
                                                        }) {
                                                            Text("Done").fontWeight(.semibold)
                                                        }
                                                    }
                                                }
                                        }
                                    }
                                    .buttonStyle(LetsGetStartedButton())
                                    .padding()
                                }
                            }
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(.black)
                                    .frame(width: 250, height: 200)
                                VStack {
                                    HStack {
                                        Text("Title")
                                            .foregroundColor(.white)
                                            .bold()
                                        Spacer()
                                    }.padding()
                                    Image(systemName: "house")
                                        .foregroundColor(.white)
                                    Text("Description")
                                        .foregroundColor(.white)
                                    Button(action: {
                                        self.showingSheetSafari = true
                                    }, label: {
                                        HStack {
                                            Image(systemName: "book.circle")
                                                .foregroundColor(.black)
                                            Text("Read More")
                                                .foregroundColor(.black)
                                        }
                                    })
                                    .sheet(isPresented: $showingSheetSafari) {
                                        NavigationView {
                                            safariViewPopUp(url: "https://apple.com")
                                                .toolbar {
                                                    ToolbarItem(placement: .primaryAction) {
                                                        Button(action: {
                                                            self.showingSheetSafari = false
                                                        }) {
                                                            Text("Done").fontWeight(.semibold)
                                                        }
                                                    }
                                                }
                                        }
                                    }
                                    .buttonStyle(LetsGetStartedButton())
                                    .padding()
                                }
                            }
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(.black)
                                    .frame(width: 250, height: 200)
                                VStack {
                                    HStack {
                                        Text("Title")
                                            .foregroundColor(.white)
                                            .bold()
                                        Spacer()
                                    }.padding()
                                    Image(systemName: "house")
                                        .foregroundColor(.white)
                                    Text("Description")
                                        .foregroundColor(.white)
                                    Button(action: {
                                        self.showingSheetSafari = true
                                    }, label: {
                                        HStack {
                                            Image(systemName: "book.circle")
                                                .foregroundColor(.black)
                                            Text("Read More")
                                                .foregroundColor(.black)
                                        }
                                    })
                                    .sheet(isPresented: $showingSheetSafari) {
                                        NavigationView {
                                            safariViewPopUp(url: "https://apple.com")
                                                .toolbar {
                                                    ToolbarItem(placement: .primaryAction) {
                                                        Button(action: {
                                                            self.showingSheetSafari = false
                                                        }) {
                                                            Text("Done").fontWeight(.semibold)
                                                        }
                                                    }
                                                }
                                        }
                                    }
                                    .buttonStyle(LetsGetStartedButton())
                                    .padding()
                                }
                            }
                        }.padding()
                    }
                }
                VStack {
                    HStack {
                        Text("Store")
                            .font(.title)
                            .foregroundColor(.white)
                            .bold()
                        Spacer()
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "arrow.clockwise")
                                .foregroundColor(.white)
                        }).padding()
                    }.padding()
                    ScrollView(.horizontal) {
                        HStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(.black)
                                    .frame(width: 350, height: 200)
                                VStack {
                                    HStack {
                                        Text("Title")
                                            .foregroundColor(.white)
                                            .bold()
                                        Spacer()
                                    }.padding()
                                    Image(systemName: "house")
                                        .foregroundColor(.white)
                                    Text("Description")
                                        .foregroundColor(.white)
                                    HStack {
                                        Text("Pricing")
                                            .foregroundColor(.white)
                                        Text("Available Till: ")
                                            .foregroundColor(.white)
                                    }
                                }
                            }
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(.black)
                                    .frame(width: 350, height: 200)
                                VStack {
                                    HStack {
                                        Text("Title")
                                            .foregroundColor(.white)
                                            .bold()
                                        Spacer()
                                    }.padding()
                                    Image(systemName: "house")
                                        .foregroundColor(.white)
                                    Text("Description")
                                        .foregroundColor(.white)
                                    HStack {
                                        Text("Pricing")
                                            .foregroundColor(.white)
                                        Text("Available Till: ")
                                            .foregroundColor(.white)
                                    }
                                }
                            }
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(.black)
                                    .frame(width: 350, height: 200)
                                VStack {
                                    HStack {
                                        Text("Title")
                                            .foregroundColor(.white)
                                            .bold()
                                        Spacer()
                                    }.padding()
                                    Image(systemName: "house")
                                        .foregroundColor(.white)
                                    Text("Description")
                                        .foregroundColor(.white)
                                    HStack {
                                        Text("Pricing")
                                            .foregroundColor(.white)
                                        Text("Available Till: ")
                                            .foregroundColor(.white)
                                    }
                                }
                            }
                        }.padding()
                    }
                }
                VStack {
                    HStack {
                        Text("Map Rotation")
                            .font(.title)
                            .foregroundColor(.white)
                            .bold()
                        Spacer()
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "arrow.clockwise")
                                .foregroundColor(.white)
                        }).padding()
                    }.padding()
                    ScrollView(.horizontal) {
                        HStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(.black)
                                    .frame(width: 350, height: 200)
                                VStack {
                                    HStack {
                                        Text("Current Map")
                                            .foregroundColor(.white)
                                            .bold()
                                        Spacer()
                                    }.padding()
                                    Image(systemName: "house")
                                        .foregroundColor(.white)
                                    HStack {
                                        Text("Start")
                                            .foregroundColor(.white)
                                        Text("Ending")
                                            .foregroundColor(.white)
                                    }
                                }
                            }
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(.black)
                                    .frame(width: 350, height: 200)
                                VStack {
                                    HStack {
                                        Text("Next Map")
                                            .foregroundColor(.white)
                                            .bold()
                                        Spacer()
                                    }.padding()
                                    Image(systemName: "house")
                                        .foregroundColor(.white)
                                    HStack {
                                        Text("Start")
                                            .foregroundColor(.white)
                                        Text("Ending")
                                            .foregroundColor(.white)
                                    }
                                }
                            }
                        }.padding()
                    }
                }
                VStack {
                    HStack {
                        Text("Server Status")
                            .font(.title)
                            .foregroundColor(.white)
                            .bold()
                        Spacer()
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "arrow.clockwise")
                                .foregroundColor(.white)
                        }).padding()
                    }.padding()
                    ScrollView(.horizontal) {
                        HStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(.black)
                                    .frame(width: 250, height: 200)
                                VStack {
                                    HStack {
                                        Text("Server Name: ")
                                            .foregroundColor(.white)
                                            .bold()
                                        Spacer()
                                        Text("Loading...")
                                            .foregroundColor(.white)
                                    }.padding()
                                    VStack {
                                        HStack {
                                            Text("Status:")
                                                .foregroundColor(.white)
                                            Spacer()
                                            Text("Loading...")
                                                .foregroundColor(.white)
                                        }

                                        Text("Response Code:")
                                            .foregroundColor(.white)
                                        Text("Ping (ms):")
                                            .foregroundColor(.white)
                                        Text("Last Checked:")
                                            .foregroundColor(.white)
                                    }
                                }
                            }
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(.black)
                                    .frame(width: 250, height: 200)
                                VStack {
                                    HStack {
                                        Text("Server Name: ")
                                            .foregroundColor(.white)
                                            .bold()
                                        Spacer()
                                    }.padding()
                                    VStack {
                                        Text("Status:")
                                            .foregroundColor(.white)
                                        Text("Response Code:")
                                            .foregroundColor(.white)
                                        Text("Ping (ms):")
                                            .foregroundColor(.white)
                                        Text("Last Checked:")
                                            .foregroundColor(.white)
                                    }
                                }
                            }
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(.black)
                                    .frame(width: 250, height: 200)
                                VStack {
                                    HStack {
                                        Text("Server Name: ")
                                            .foregroundColor(.white)
                                            .bold()
                                        Spacer()
                                    }.padding()
                                    VStack {
                                        Text("Status:")
                                            .foregroundColor(.white)
                                        Text("Response Code:")
                                            .foregroundColor(.white)
                                        Text("Ping (ms):")
                                            .foregroundColor(.white)
                                        Text("Last Checked:")
                                            .foregroundColor(.white)
                                    }
                                }
                            }
                        }.padding()
                    }
                }
            }
            .onAppear {
               // server.retrieveData()
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
