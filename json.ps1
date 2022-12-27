
$user = read-host "dork"
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
