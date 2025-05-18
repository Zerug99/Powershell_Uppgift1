Function Skapa_Struktur {  # namnet på funktionen 
    param (
        [string]$namn
    )

    $sökväg = "C:\Strukturverktyg\$namn"

    try { # våran try den kommer att försöka kolla om mappen finns redan.
        
        if (Test-Path $sökväg) {
            throw "Mappen finns redan!"
        }

        
        New-Item -ItemType Directory -Path "C:\Strukturverktyg\" # Inne i mappen kommer vårt verktyg jobba i. Dom flesta har ett C:
        New-Item -ItemType Directory -Path "$sökväg\" # Det användaren har angett kommer att bli mappen.
        New-Item -ItemType Directory -Path "$sökväg\logs\" 
        New-Item -ItemType Directory -Path "$sökväg\scripts\" 
        New-Item -ItemType Directory -Path "$sökväg\temp\" 

    
        New-Item -ItemType File -Path "$sökväg\logs\log1.txt" #logfilen och anger ett cmdlet som ska ska out
        Add-Content -Path "$sökväg\logs\log1.txt" -Value "Struktur skapad: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"

        Write-Host "Klart strukturen finns i $sökväg"

    } catch {    # har skapar vi vårt felmeddelande
        
        Write-Host "Fel: $_"
        Write-Host "Mappen kunde inte skapas"
    }
}

$namn = Read-Host " Ange det hemliga namnet"
CreateStructure -namn $namn