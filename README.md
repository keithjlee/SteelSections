# Note:
This has been integrated into [AsapToolkit](https://github.com/keithjlee/AsapToolkit)

# SteelSections
Quick geometric information extraction for common rolled steel sections. Based on **v15** of the AISC shape database and includes:

- Wide flange (`W`)
- Channels (`C`)
- Angles (`L`)
- Double angles (`LL`)
- Tee (`WT`)
- Rectangular HSS (`HSSRect`)
- Round HSS (`HSSRound`)

Information for a specific section can be extracted via its name and corresponding section type, e.g.:
```julia
w460x97 = W("W460X97")
```

Most commonly used section properties are available as fields, e.g.:
```julia
Ix = w460x97.Ix
A = w460x97.A
J = w460x97.J
```

**Only metric names are callable and all units are in [mm]** Sorry not sorry.

## Utilities
### Available section names
To see the available sections to add `names` to the end of each section type
```julia
@show HSSRectnames
@show LLnames
```

### Extract all sections of a given type
If you want all Tee (`WT`) sections available in a vector:
```julia
alltees = allWT()
```
And so forth for the other section types.

### Convert for structural analysis
If using [Asap](https://github.com/keithjlee/Asap), you can directly convert a section into an `Asap.Section` or `Asap.TrussSection` via:
```julia
E = 200. #GPa = kN/mm2
G = 70. #GPa = kN/mm2

framsection = toASAPframe(w460x97, E, G)
trusssection = toASAPtruss(w460x97, E)
```

Unit conversions are available for this function, but **The material property arguments must maintain units of [mm]**

```julia
framesectionInches = toASAPframe(w460x97, E, G; unit = :in)
trusssectionMeters = toASAPtruss(w460x97, E; unit = :m)
```
