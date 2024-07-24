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
      indicator_choices()
    Output
      [1] "emissions" "sector"   

---

    Code
      level_choices()
    Output
      [1] "product" "company"

