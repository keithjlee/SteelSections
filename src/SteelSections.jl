module SteelSections
using XLSX
include("utilities.jl")

include("types.jl")
export W, C, L, LL, WT, HSSRect, HSSRound


using Asap: Section, TrussSection

include("functions.jl")
export allW, allC, allL, allLL, allWT, allHSSRect, allHSSRound

export Wnames, Cnames, Lnames, LLnames, WTnames, HSSRectnames, HSSRoundnames

export toASAPframe, toASAPtruss

end # module SteelSections
