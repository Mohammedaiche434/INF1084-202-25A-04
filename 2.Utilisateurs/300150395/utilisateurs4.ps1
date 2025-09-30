# Charger le premier script pour récupérer les utilisateurs

. .\utilisateurs1.ps1

# Créer un groupe ImportGroupe

$Groups = @{
    "ImportGroupe" = @()
}

# Ajouter tous les utilisateurs importés dans ImportGroupe

$Groups["ImportGroupe"] += $Users

# Afficher les utilisateurs du groupe ImportGroupe

"Utilisateurs dans ImportGroupe :"
$Groups["ImportGroupe"] | ForEach-Object { "$($_.Prenom) $($_.Nom)" }

# Optionnel : Exporter le groupe vers un fichier CSV

$Groups["ImportGroupe"] | Export-Csv -Path "C:\Temp\ImportGroupe.csv" -NoTypeInformation

