using Pkg
Pkg.add("CSV")
using CSV

files = readdir("data")

for file in files
    if endswith(file, ".csv")
        data = CSV.File(joinpath("data", file))  # Charger le fichier CSV
        println(first(data,5))  # Afficher le contenu du fichier (remplacez cette étape par vos propres opérations)
    end
end