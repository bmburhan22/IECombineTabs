$app = new-object -com shell.application
$ie = $app.windows() | ? {$_.Name -eq "Internet Explorer"}
$ieWindow = New-Object -com internetexplorer.application; 
$ieWindow.Visible = $true;
Foreach ($ieitem in $ie) 
{
$ieitem.Visible = $true;
$url = $ieitem.LocationURL
$ieitem.Quit()
$ieWindow.Navigate($url, 2048);
}