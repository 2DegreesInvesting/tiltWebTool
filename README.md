
<!-- README.md is generated from README.Rmd. Please edit that file -->

# tiltWebTool

<!-- badges: start -->

[![R-CMD-check](https://github.com/2DegreesInvesting/tiltWebTool/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/2DegreesInvesting/tiltWebTool/actions/workflows/R-CMD-check.yaml)
[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

The goal of tiltWebTool is to help you use tilt software from the web
browser.

### Datasets

``` r
library(tibble)

devtools::load_all()
#> ℹ Loading tiltWebTool
```

``` r
packageVersion("tiltWebTool")
#> [1] '0.0.0.9004'
```

``` r

emissions
#> # A tibble: 72 × 3
#>    companies_id                              product           company 
#>  * <chr>                                     <list>            <list>  
#>  1 asteria_megalotomusquinquespinosus        <tibble [6 × 28]> <tibble>
#>  2 skarn_gallinule                           <tibble [6 × 28]> <tibble>
#>  3 relegable_southernhairnosedwombat         <tibble [6 × 28]> <tibble>
#>  4 psychodelic_airedale                      <tibble [6 × 28]> <tibble>
#>  5 ergophilic_fieldspaniel                   <tibble [6 × 28]> <tibble>
#>  6 preexistent_africanmolesnake              <tibble [6 × 28]> <tibble>
#>  7 wealthy_ocelot                            <tibble [6 × 28]> <tibble>
#>  8 fulltime_mollusk                          <tibble [6 × 28]> <tibble>
#>  9 gentlemanlike_asiaticlesserfreshwaterclam <tibble [6 × 28]> <tibble>
#> 10 frowsy_metalmarkbutterfly                 <tibble [6 × 28]> <tibble>
#> # ℹ 62 more rows
```

``` r

sector
#> # A tibble: 72 × 3
#>    companies_id                       product           company           
#>  * <chr>                              <list>            <list>            
#>  1 antimonarchy_canine                <tibble [4 × 25]> <tibble [16 × 12]>
#>  2 celestial_lovebird                 <tibble [4 × 25]> <tibble [16 × 12]>
#>  3 nonphilosophical_llama             <tibble [8 × 25]> <tibble [16 × 12]>
#>  4 asteria_megalotomusquinquespinosus <tibble [4 × 25]> <tibble [16 × 12]>
#>  5 quasifaithful_amphiuma             <tibble [4 × 25]> <tibble [16 × 12]>
#>  6 spectacular_americanriverotter     <tibble [4 × 25]> <tibble [16 × 12]>
#>  7 contrite_silkworm                  <tibble [4 × 25]> <tibble [16 × 12]>
#>  8 harmless_owlbutterfly              <tibble [4 × 25]> <tibble [16 × 12]>
#>  9 fascist_maiasaura                  <tibble [4 × 25]> <tibble [16 × 12]>
#> 10 charismatic_islandwhistler         <tibble [4 × 25]> <tibble [16 × 12]>
#> # ℹ 62 more rows
```

### Dictionary

<iframe src="https://docs.google.com/spreadsheets/d/e/2PACX-1vSpeL37_DinYYKaQNKWdjL0oKU_VrEKMDBN1dBfBpO6AgSyHLTt8WiiXFojcbPclsPTE0VliDWvRKxh/pubhtml?widget=true&amp;headers=false" width="600" height="500">
</iframe>
