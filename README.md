
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
library(tiltWebTool)
library(googlesheets4)

packageVersion("tiltWebTool")
#> [1] '0.0.0.9003'
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

``` r

dictionary()
#> # A tibble: 81 × 5
#>    dataset   level   name                      type      definition 
#>    <chr>     <chr>   <chr>                     <chr>     <chr>      
#>  1 emissions product companies_id              character coming soon
#>  2 emissions product company_name              character coming soon
#>  3 emissions product country                   character coming soon
#>  4 emissions product emission_profile          character coming soon
#>  5 emissions product benchmark                 character coming soon
#>  6 emissions product ep_product                character coming soon
#>  7 emissions product matched_activity_name     character coming soon
#>  8 emissions product matched_reference_product character coming soon
#>  9 emissions product unit                      character coming soon
#> 10 emissions product multi_match               logical   coming soon
#> # ℹ 71 more rows
```
