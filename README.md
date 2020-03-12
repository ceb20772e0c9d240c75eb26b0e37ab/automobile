# AUTO🚘MOBILE
### PROOF OF CONCEPT of mobile penetration testing automation with docker and CI 
# ✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨

Following structure is flexible and may be changed due to the needs 

                                        .-------------------.
                   _____________________|APPLICATION PACKAGE|_____________________
                  |                     '-------------------'                     |
                  |                               |                               |
      .------------------------.          .--------------.              .-----------------.   
      |dynamic analysis service|          |network helper|              |decompile service|
      '------------------------'          '--------------'              '-----------------'
        ^      ^      ^      ^                ^   |                              |
        ^      ^      ^      ^              t ^   t                              c
             interacation                   r ^   r                              o
        ^      ^      ^      ^              a ^   a                              d
        ^      ^      ^      ^              f ^   f                              e
      .-|------|------|------|-.            f ^   f                              |
      |📱     📱     📱     📱|            i ^   i                  .-----------------------.
      '------------------------'            c ^   c                  |static analysis service|
                   |                          ^   |                  '-----------------------'
                   >>>>>>>>>>>>>>>>>>>>>>>>>>>>   l
                                                  o
                                                  g
                                                  s
                                                  |
                                         .-------------------.
                                         |WEB pentest service|
                                         '-------------------'
