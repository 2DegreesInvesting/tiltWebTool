# snap

    Code
      selectChoices("country")
    Output
      <div class="form-group shiny-input-container">
        <label class="control-label" id="country-label" for="country">Country</label>
        <div>
          <select id="country" class="shiny-input-select"><option value="." selected>.</option>
      <option value="austria">austria</option>
      <option value="france">france</option>
      <option value="germany">germany</option>
      <option value="netherlands">netherlands</option>
      <option value="spain">spain</option></select>
          <script type="application/json" data-for="country" data-nonempty="">{"plugins":["selectize-plugin-a11y"]}</script>
        </div>
      </div>

# errors gracefully

    Code
      selectChoices()
    Condition
      Error in `selectChoices()`:
      ! argument "id" is missing, with no default

---

    Code
      selectChoices("bad")
    Condition
      Error in `get()`:
      ! object 'bad_choices' not found

# haven't changed

    Code
      level_choices()
    Output
      [1] "product" "company"

---

    Code
      country_choices()
    Output
      [1] "."           "austria"     "france"      "germany"     "netherlands"
      [6] "spain"      

---

    Code
      year_choices()
    Output
      [1] "."    "2030" "2050" "NA"  

---

    Code
      scenario_choices()
    Output
      [1] "."        "NZ 2050"  "1.5C RPS" "NA"      

---

    Code
      grouping_emission_choices()
    Output
      [1] "."                   "all"                 "isic_4digit"        
      [4] "tilt_subsector"      "unit"                "unit_isic_4digit"   
      [7] "unit_tilt_subsector" "NA"                 

