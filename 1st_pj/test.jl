using Pkg
Pkg.add("CSV")
Pkg.add("DataFrames")

using CSV
using DataFrames

# データの読みこみ
taitanic = CSV.read("/Users/imutayuji/programming/julia/1st_pj/dataset/train.csv", DataFrame)



taitanic2 = taitanic[[3, 4, 8], :]

function isFemale(sex)
    return sex == "female"
end

female = taitanic[isFemale.(taitanic.Sex), :]

female = taitanic[taitanic.Sex .== "female", :]

taitanic[taitanic.Survived .== 1, :]

sort_data = CSV.sort(taitanic, :Age)


len = size(taitanic)
describe(taitanic)


