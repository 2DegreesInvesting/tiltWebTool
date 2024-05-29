
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

``` r
dictionary_url("csv") |> read.csv()
#>      dataset   level                               name      type  definition
#> 1  emissions product                       companies_id character coming soon
#> 2  emissions product                       company_name character coming soon
#> 3  emissions product                            country character coming soon
#> 4  emissions product                   emission_profile character coming soon
#> 5  emissions product                          benchmark character coming soon
#> 6  emissions product                         ep_product character coming soon
#> 7  emissions product              matched_activity_name character coming soon
#> 8  emissions product          matched_reference_product character coming soon
#> 9  emissions product                               unit character coming soon
#> 10 emissions product                        multi_match   logical coming soon
#> 11 emissions product                 matching_certainty character coming soon
#> 12 emissions product matching_certainty_company_average character coming soon
#> 13 emissions product                        tilt_sector character coming soon
#> 14 emissions product                     tilt_subsector character coming soon
#> 15 emissions product                        isic_4digit character coming soon
#> 16 emissions product                   isic_4digit_name character coming soon
#> 17 emissions product                       company_city character coming soon
#> 18 emissions product                           postcode character coming soon
#> 19 emissions product                            address character coming soon
#> 20 emissions product                      main_activity character coming soon
#> 21 emissions product         activity_uuid_product_uuid character coming soon
#> 22 emissions product                    profile_ranking    double coming soon
#> 23 emissions product                       ei_geography character coming soon
#> 24 emissions product                         co2e_lower    double coming soon
#> 25 emissions product                         co2e_upper    double coming soon
#> 26 emissions product        amount_of_distinct_products   integer coming soon
#> 27 emissions product                       equal_weight    double coming soon
#> 28 emissions product                          best_case    double coming soon
#> 29 emissions product                         worst_case    double coming soon
#> 30 emissions company                       companies_id character coming soon
#> 31 emissions company                       company_name character coming soon
#> 32 emissions company                            country character coming soon
#> 33 emissions company             emission_profile_share    double coming soon
#> 34 emissions company                   emission_profile character coming soon
#> 35 emissions company                          benchmark character coming soon
#> 36 emissions company matching_certainty_company_average character coming soon
#> 37 emissions company                       company_city character coming soon
#> 38 emissions company                           postcode character coming soon
#> 39 emissions company                            address character coming soon
#> 40 emissions company                      main_activity character coming soon
#> 41 emissions company                profile_ranking_avg    double coming soon
#> 42 emissions company                            co2_avg    double coming soon
#> 43    sector product                       companies_id character coming soon
#> 44    sector product                       company_name character coming soon
#> 45    sector product                            country character coming soon
#> 46    sector product                     sector_profile character coming soon
#> 47    sector product                  reduction_targets    double coming soon
#> 48    sector product                           scenario character coming soon
#> 49    sector product                               year    double coming soon
#> 50    sector product                         ep_product character coming soon
#> 51    sector product              matched_activity_name character coming soon
#> 52    sector product          matched_reference_product character coming soon
#> 53    sector product                               unit character coming soon
#> 54    sector product                        tilt_sector character coming soon
#> 55    sector product                     tilt_subsector character coming soon
#> 56    sector product                        multi_match   logical coming soon
#> 57    sector product                 matching_certainty character coming soon
#> 58    sector product matching_certainty_company_average character coming soon
#> 59    sector product                       company_city character coming soon
#> 60    sector product                           postcode character coming soon
#> 61    sector product                            address character coming soon
#> 62    sector product                      main_activity character coming soon
#> 63    sector product         activity_uuid_product_uuid character coming soon
#> 64    sector product                        isic_4digit character coming soon
#> 65    sector product                    sector_scenario character coming soon
#> 66    sector product                 subsector_scenario character coming soon
#> 67    sector product                       ei_geography character coming soon
#> 68    sector product                   isic_4digit_name character coming soon
#> 69    sector company                       companies_id character coming soon
#> 70    sector company                       company_name character coming soon
#> 71    sector company                            country character coming soon
#> 72    sector company               sector_profile_share    double coming soon
#> 73    sector company                     sector_profile character coming soon
#> 74    sector company                           scenario character coming soon
#> 75    sector company                               year character coming soon
#> 76    sector company matching_certainty_company_average character coming soon
#> 77    sector company                       company_city character coming soon
#> 78    sector company                           postcode character coming soon
#> 79    sector company                            address character coming soon
#> 80    sector company                      main_activity character coming soon
#> 81    sector company              reduction_targets_avg    double coming soon
```

Edit at:
<https://docs.google.com/spreadsheets/d/1gOZRS9_0yUgR7UXgsf4WmDoAEXfUQy3Mz0MZM1Xvv40/edit#gid=105958234>
