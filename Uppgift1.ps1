$name = Read-Host "Ange det hemliga namnet"  # Det användaren skriver kommer att sparas i variabeln $name

Write-Host "Det hemliga namnet blir" $name # Skriver ut variablen som har angets här 

    New-Item -ItemType Directory -Path "C:\Strukturverktyg\" # Inne i mappen kommer vårt verktyg jobba i. Dom flesta har ett C: 
    New-Item -ItemType Directory -Path "C:\Strukturverktyg\$name\"  # Det användaren har angett kommer att bli mappen. 
    New-Item -ItemType Directory -Path "C:\Strukturverktyg\$name\logs\" 
    New-Item -ItemType Directory -Path "C:\Strukturverktyg\$name\scripts\"
    New-Item -ItemType Directory -Path "C:\Strukturverktyg\$name\temp\"

    New-item -ItemType file -Path "C:\Strukturverktyg\$name\logs\log-YYYY-MM-DD.txt" #Första logge
    Add-Content -Path "C:\Strukturverktyg\$name\logs\log-YYYY-MM-DD.txt" -Value "Struktur skapad: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"

