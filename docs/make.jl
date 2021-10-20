using DemoPackageXL
using Documenter

DocMeta.setdocmeta!(DemoPackageXL, :DocTestSetup, :(using DemoPackageXL); recursive=true)

makedocs(;
    modules=[DemoPackageXL],
    authors="Xubo Leng <hsupo.leng@gmail.com> and contributors",
    repo="https://github.com/HsupoLeng/DemoPackageXL.jl/blob/{commit}{path}#{line}",
    sitename="DemoPackageXL.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://HsupoLeng.github.io/DemoPackageXL.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/HsupoLeng/DemoPackageXL.jl",
    devbranch="main",
)
