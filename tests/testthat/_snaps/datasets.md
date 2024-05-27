# have the expected size and shape

    Code
      emissions
    Output
      # A tibble: 72 x 3
         companies_id                              product           company 
       * <chr>                                     <list>            <list>  
       1 asteria_megalotomusquinquespinosus        <tibble [6 x 28]> <tibble>
       2 skarn_gallinule                           <tibble [6 x 28]> <tibble>
       3 relegable_southernhairnosedwombat         <tibble [6 x 28]> <tibble>
       4 psychodelic_airedale                      <tibble [6 x 28]> <tibble>
       5 ergophilic_fieldspaniel                   <tibble [6 x 28]> <tibble>
       6 preexistent_africanmolesnake              <tibble [6 x 28]> <tibble>
       7 wealthy_ocelot                            <tibble [6 x 28]> <tibble>
       8 fulltime_mollusk                          <tibble [6 x 28]> <tibble>
       9 gentlemanlike_asiaticlesserfreshwaterclam <tibble [6 x 28]> <tibble>
      10 frowsy_metalmarkbutterfly                 <tibble [6 x 28]> <tibble>
      # i 62 more rows

---

    Code
      emissions_dictionary
    Output
      # A tibble: 42 x 5
         dataset   level   name                      type      definition
         <chr>     <chr>   <chr>                     <chr>     <chr>     
       1 emissions product companies_id              character <NA>      
       2 emissions product company_name              character <NA>      
       3 emissions product country                   character <NA>      
       4 emissions product emission_profile          character <NA>      
       5 emissions product benchmark                 character <NA>      
       6 emissions product ep_product                character <NA>      
       7 emissions product matched_activity_name     character <NA>      
       8 emissions product matched_reference_product character <NA>      
       9 emissions product unit                      character <NA>      
      10 emissions product multi_match               logical   <NA>      
      # i 32 more rows

---

    Code
      sector
    Output
      # A tibble: 72 x 3
         companies_id                       product           company           
       * <chr>                              <list>            <list>            
       1 antimonarchy_canine                <tibble [4 x 25]> <tibble [16 x 12]>
       2 celestial_lovebird                 <tibble [4 x 25]> <tibble [16 x 12]>
       3 nonphilosophical_llama             <tibble [8 x 25]> <tibble [16 x 12]>
       4 asteria_megalotomusquinquespinosus <tibble [4 x 25]> <tibble [16 x 12]>
       5 quasifaithful_amphiuma             <tibble [4 x 25]> <tibble [16 x 12]>
       6 spectacular_americanriverotter     <tibble [4 x 25]> <tibble [16 x 12]>
       7 contrite_silkworm                  <tibble [4 x 25]> <tibble [16 x 12]>
       8 harmless_owlbutterfly              <tibble [4 x 25]> <tibble [16 x 12]>
       9 fascist_maiasaura                  <tibble [4 x 25]> <tibble [16 x 12]>
      10 charismatic_islandwhistler         <tibble [4 x 25]> <tibble [16 x 12]>
      # i 62 more rows

---

    Code
      sector_dictionary
    Output
      # A tibble: 39 x 5
         dataset level   name                      type      definition
         <chr>   <chr>   <chr>                     <chr>     <chr>     
       1 sector  product companies_id              character <NA>      
       2 sector  product company_name              character <NA>      
       3 sector  product country                   character <NA>      
       4 sector  product sector_profile            character <NA>      
       5 sector  product reduction_targets         double    <NA>      
       6 sector  product scenario                  character <NA>      
       7 sector  product year                      double    <NA>      
       8 sector  product ep_product                character <NA>      
       9 sector  product matched_activity_name     character <NA>      
      10 sector  product matched_reference_product character <NA>      
      # i 29 more rows

