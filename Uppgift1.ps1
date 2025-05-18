$name = Read-Host "Ange det hemliga namnet"  # Det användaren skriver kommer att sparas i variabeln $name

Write-Host "Det hemliga namnet blir" $name # Skriver ut variablen som har angets här 

New-Item -ItemType Directory -Path "C:\Strukturverktyg\"

New-Item -ItemType Directory -Path "C:\Strukturverktyg\$name\"