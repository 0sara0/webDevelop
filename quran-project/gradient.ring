#! ring  -cgi
#Author		:Sara Hamdy
#Date		:2018/01/22
#Application	:gradient

Load "weblib.ring"
Import System.Web

Func Main
        New Page
        {

                        divstart([ :align = "center" , :style = stylefloatleft() + StyleSizeFull()+stylegradient(14) ])
                        divend()
    
        }
