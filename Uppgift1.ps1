Function  The-Creator {
    param (
        [string]$namn
    )

    $sökväg = "C:\Strukturverktyg\$namn

      try {
        # Kolla om mappen redan finns
        if (Test-Path $sökväg) {
            throw "Mappen finns redan!"
        }







     New-Item -ItemType Directory -Path "C:\Strukturverktyg\" # Inne i mappen kommer vårt verktyg jobba i. Dom flesta har ett C: 
     New-Item -ItemType Directory -Path "C:\Strukturverktyg\$name\"  # Det användaren har angett kommer att bli mappen. 
     New-Item -ItemType Directory -Path "C:\Strukturverktyg\$name\logs\" 
     New-Item -ItemType Directory -Path "C:\Strukturverktyg\$name\scripts\"
     New-Item -ItemType Directory -Path "C:\Strukturverktyg\$name\temp\"

        New-item -ItemType file -Path "C:\Strukturverktyg\$name\logs\log1.txt" #Första logge
        Add-Content -Path "C:\Strukturverktyg\$name\logs\log1.txt" -Value "Struktur skapad: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"





Write-Host "Det hemliga namnet blir" $name # Skriver ut variablen som har angets här 
