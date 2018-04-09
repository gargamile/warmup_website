while($count -ne 10 -and (!(Test-Path "C:\Scripts\client_portal.html")))
     {
       $count++
       Write-Host "Loop " $count "to warmup Client Portal"
	     Invoke-WebRequest -Uri https://app.bee-bee.me -TimeoutSec 15 -OutFile C:\Scripts\client_portal.html
       Write-Host "Warming up the checkout"
       Invoke-WebRequest -Uri https://shane.bee-bee.me -TimeoutSec 10
       Write-Host "Warming up the POS"
       Invoke-WebRequest -Uri https://pos.bee-bee.me -TimeoutSec 10
	   sleep 5 ;
     }
Remove-Item C:\Scripts\client_portal.html
$count = 0
