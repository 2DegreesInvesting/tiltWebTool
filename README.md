
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
library(tiltDevTools)

packageVersion("tiltWebTool")
#> [1] '0.0.0.9001'
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

emissions |> 
  tiltDevTools::use_dictionary() |> 
  print(n = Inf)
#> # A tibble: 42 × 5
#>    dataset   level   name                               type      definition
#>    <chr>     <chr>   <chr>                              <chr>     <chr>     
#>  1 emissions product companies_id                       character <NA>      
#>  2 emissions product company_name                       character <NA>      
#>  3 emissions product country                            character <NA>      
#>  4 emissions product emission_profile                   character <NA>      
#>  5 emissions product benchmark                          character <NA>      
#>  6 emissions product ep_product                         character <NA>      
#>  7 emissions product matched_activity_name              character <NA>      
#>  8 emissions product matched_reference_product          character <NA>      
#>  9 emissions product unit                               character <NA>      
#> 10 emissions product multi_match                        logical   <NA>      
#> 11 emissions product matching_certainty                 character <NA>      
#> 12 emissions product matching_certainty_company_average character <NA>      
#> 13 emissions product tilt_sector                        character <NA>      
#> 14 emissions product tilt_subsector                     character <NA>      
#> 15 emissions product isic_4digit                        character <NA>      
#> 16 emissions product isic_4digit_name                   character <NA>      
#> 17 emissions product company_city                       character <NA>      
#> 18 emissions product postcode                           character <NA>      
#> 19 emissions product address                            character <NA>      
#> 20 emissions product main_activity                      character <NA>      
#> 21 emissions product activity_uuid_product_uuid         character <NA>      
#> 22 emissions product profile_ranking                    double    <NA>      
#> 23 emissions product ei_geography                       character <NA>      
#> 24 emissions product co2e_lower                         double    <NA>      
#> 25 emissions product co2e_upper                         double    <NA>      
#> 26 emissions product amount_of_distinct_products        integer   <NA>      
#> 27 emissions product equal_weight                       double    <NA>      
#> 28 emissions product best_case                          double    <NA>      
#> 29 emissions product worst_case                         double    <NA>      
#> 30 emissions company companies_id                       character <NA>      
#> 31 emissions company company_name                       character <NA>      
#> 32 emissions company country                            character <NA>      
#> 33 emissions company emission_profile_share             double    <NA>      
#> 34 emissions company emission_profile                   character <NA>      
#> 35 emissions company benchmark                          character <NA>      
#> 36 emissions company matching_certainty_company_average character <NA>      
#> 37 emissions company company_city                       character <NA>      
#> 38 emissions company postcode                           character <NA>      
#> 39 emissions company address                            character <NA>      
#> 40 emissions company main_activity                      character <NA>      
#> 41 emissions company profile_ranking_avg                double    <NA>      
#> 42 emissions company co2_avg                            double    <NA>
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

sector |> 
  tiltDevTools::use_dictionary() |> 
  print(n = Inf)
#> # A tibble: 39 × 5
#>    dataset level   name                               type      definition
#>    <chr>   <chr>   <chr>                              <chr>     <chr>     
#>  1 sector  product companies_id                       character <NA>      
#>  2 sector  product company_name                       character <NA>      
#>  3 sector  product country                            character <NA>      
#>  4 sector  product sector_profile                     character <NA>      
#>  5 sector  product reduction_targets                  double    <NA>      
#>  6 sector  product scenario                           character <NA>      
#>  7 sector  product year                               double    <NA>      
#>  8 sector  product ep_product                         character <NA>      
#>  9 sector  product matched_activity_name              character <NA>      
#> 10 sector  product matched_reference_product          character <NA>      
#> 11 sector  product unit                               character <NA>      
#> 12 sector  product tilt_sector                        character <NA>      
#> 13 sector  product tilt_subsector                     character <NA>      
#> 14 sector  product multi_match                        logical   <NA>      
#> 15 sector  product matching_certainty                 character <NA>      
#> 16 sector  product matching_certainty_company_average character <NA>      
#> 17 sector  product company_city                       character <NA>      
#> 18 sector  product postcode                           character <NA>      
#> 19 sector  product address                            character <NA>      
#> 20 sector  product main_activity                      character <NA>      
#> 21 sector  product activity_uuid_product_uuid         character <NA>      
#> 22 sector  product isic_4digit                        character <NA>      
#> 23 sector  product sector_scenario                    character <NA>      
#> 24 sector  product subsector_scenario                 character <NA>      
#> 25 sector  product ei_geography                       character <NA>      
#> 26 sector  product isic_4digit_name                   character <NA>      
#> 27 sector  company companies_id                       character <NA>      
#> 28 sector  company company_name                       character <NA>      
#> 29 sector  company country                            character <NA>      
#> 30 sector  company sector_profile_share               double    <NA>      
#> 31 sector  company sector_profile                     character <NA>      
#> 32 sector  company scenario                           character <NA>      
#> 33 sector  company year                               character <NA>      
#> 34 sector  company matching_certainty_company_average character <NA>      
#> 35 sector  company company_city                       character <NA>      
#> 36 sector  company postcode                           character <NA>      
#> 37 sector  company address                            character <NA>      
#> 38 sector  company main_activity                      character <NA>      
#> 39 sector  company reduction_targets_avg              double    <NA>
```
