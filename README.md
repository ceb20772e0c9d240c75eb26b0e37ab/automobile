# AUTO🚘MOBILE
### PROOF OF CONCEPT of mobile penetration testing automation with docker

                                  .-------------------.
                   _______________|APPLICATION PACKAGE|_______
                  |               '-------------------'       |
                  |                         |                 |
      .------------------------.    .--------------.    .-----------------.   
      |dynamic analysis service|    |network helper|    |decompile service|
      '------------------------'    '--------------'    '-----------------'
        ^      ^      ^      ^          ^   |                    |
        ^      ^      ^      ^        t ^   t                    c
            (interacation)            r ^   r                    o
        ^      ^      ^      ^        a ^   a                    d
        ^      ^      ^      ^        f ^   f                    e
      .-|------|------|------|-.      f ^   f                    |
      |📱     📱     📱     📱|      i ^   i        .-----------------------.
      '------------------------'      c ^   c        |static analysis service|
                   |                    ^   |        '-----------------------'
                   >>>>>>>>>>>>>>>>>>>>>    l
                                            o
                                            g
                                            s
                                            |
                                  .-------------------.
                                  |WEB pentest service|
                                  '-------------------'
