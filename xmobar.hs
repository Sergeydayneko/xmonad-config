Config { 
    font = "xft:Droid Sans Mono:size=9:bold:antialias=true"
    bgColor = "#000000",
    fgColor = "#ffffff",
    position = Static { xpos = 0, ypos = 0, width = 1920, height = 16 },
    lowerOnStart = True,
    commands = [
         --Run Weather "UUDD" ["-t","<station>: <tempC>C","-L","18","-H","25","--normal","green","--high","red","--low","lightblue"] 36000
        Run Memory ["-t","<used>/<total>M (<cache>M)","-H","8192","-L","4096","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10        
        ,Run Network "eno1" [
             "-t"    ,"rx:<rx>, tx:<tx>"
            ,"-H"   ,"200"
            ,"-L"   ,"10"
            ,"-h"   ,"#FFB6B0"
            ,"-l"   ,"#CEFFAC"
            ,"-n"   ,"#FFFFCC"
            , "-c"  , " "
            , "-w"  , "2"
            ] 10
        ,Run Date "%Y.%m.%d %H:%M:%S" "date" 10
        ,Run StdinReader
    ],
    sepChar = "%",
    alignSep = "}{",
    template = "%StdinReader% }{ %memory% | %eno1% | <fc=#FFFFCC>%date%</fc>   "
}
