# AUTO🚘MOBILE
### PROOF OF CONCEPT of mobile penetration testing automation with docker

                                  .-------------------.
                   _______________|APPLICATION PACKAGE|_______
                  |               '-------------------'       |
                  |                         |                 |
      .------------------------.    .--------------.    .-----------------.   
      |dynamic analysis service|    |network helper|    |decompile service|
      '------------------------'    '--------------'    '-----------------'
        ^      ^      ^      ^          ^   |                 |
        ^      ^      ^      ^        t ^   |                 |
            (interacation)            r ^   |                 |
        ^      ^      ^      ^        a ^   |           .-----------------.
        ^      ^      ^      ^        f ^   |           
      .-|------|------|------|-.      f ^   | 
      |📱     📱     📱     📱|      i ^   |
      '------------------------'      c ^   |
                   |                    ^   |
                   >>>>>>>>>>>>>>>>>>>>>    |
                                            |
                                 .-------------------.
                                 |WEB pentest service|
                                 '-------------------'
