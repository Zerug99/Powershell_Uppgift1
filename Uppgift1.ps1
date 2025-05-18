Function Skapa_Struktur {
    param (
        [string]$namn
    )

    $sökväg = "C:\Strukturverktyg\$namn"

    try {
        # Kolla om mappen redan finns
        if (Test-Path $sökväg) {
            throw "Mappen finns redan!"
        }

        # Skapa mappar
        New-Item -ItemType Directory -Path "C:\Strukturverktyg\" 
        New-Item -ItemType Directory -Path "$sökväg\" 
        New-Item -ItemType Directory -Path "$sökväg\logs\" 
        New-Item -ItemType Directory -Path "$sökväg\scripts\" 
        New-Item -ItemType Directory -Path "$sökväg\temp\" 

        # Skapa loggfil
        New-Item -ItemType File -Path "$sökväg\logs\log1.txt" 
        Add-Content -Path "$sökväg\logs\log1.txt" -Value "Struktur skapad: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"

        Write-Host "Klart strukturen finns i $sökväg"

    } catch {
        # Felmeddelande om något går fel
        Write-Host "Fel: $_"
        Write-Host "Mappen kunde inte skapas"
    }
}

$namn = Read-Host " Ange det hemliga namnet"
CreateStructure -namn $namn