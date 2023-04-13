module SteelSections
using XLSX
include("utilities.jl")

include("types.jl")
export W, C, L, LL, WT, HSSRect, HSSRound


using Asap: Section

include("functions.jl")
export allW, allC, allL, allLL, allWT, allHSSRect, allHSSRound

export toASAP

end # module SteelSections
