<!-- NEWS.md is maintained by https://cynkra.github.io/fledge, do not edit -->

# tiltWebTool 0.0.0.9031 (2024-07-04)

* Replace the download button with a link to the download page (#98).

# tiltWebTool 0.0.0.9030 (2024-07-03)

* The disclaimer page now also links to a CC- license (#97).

# tiltWebTool 0.0.0.9029 (2024-06-26)

* Use tilt's colors and fonts (#91).

# tiltWebTool 0.0.0.9028 (2024-06-26)

* Embed a short video explaining what's tilt (#88).

# tiltWebTool 0.0.0.9027 (2024-06-26)

* The word 'tilt' now links to tilt's website (#87).

# tiltWebTool 0.0.0.9026 (2024-06-26)

* Add required text via inst/config.yml (#79).

# tiltWebTool 0.0.0.9025 (2024-06-25)

* Add bslib layout so we have space to add the required text (#75).

# tiltWebTool 0.0.0.9024 (2024-06-24)

* The app no longer includes plots (#76).

# tiltWebTool 0.0.0.9023 (2024-06-20)

* Allow changing theme, colours, fonts, etc. on the fly (#74).

# tiltWebTool 0.0.0.9022 (2024-06-20)

* `theme_tiltplot()` is now retired from the public API (#72).

# tiltWebTool 0.0.0.9021 (2024-06-20)

* Deploy to shinyapps.io with `r-version: 'renv'` for maintenability.

# tiltWebTool 0.0.0.9020 (2024-06-20)

* Deploy to shinyapps.io with R 4.4.0 to avoid [Unsopported R version 4.4.1](https://forum.posit.co/t/unsuported-r-verion-4-4-1-on-shinyapps-io/188270/3).

# tiltWebTool 0.0.0.9019 (2024-06-19)

* The 'Weight' selector now has a more detailed label (#27).

# tiltWebTool 0.0.0.9018 (2024-06-06)

* Move app version to the end.

# tiltWebTool 0.0.0.9017 (2024-06-06)

* Use minty bslib theme.

# tiltWebTool 0.0.0.9016 (2024-06-06)

* The dictionary is now read from the source GoogleSheet when we build the app,
not when the user runs it. This makes the app snappier (#55).

# tiltWebTool 0.0.0.9015 (2024-06-06)

* Use tilt theme (#62).

# tiltWebTool 0.0.0.9014 (2024-06-06)

* The app now shows the version of tiltWebTool (#53).

# tiltWebTool 0.0.0.9013 (2024-06-06)

* Update PR checklist.

# tiltWebTool 0.0.0.9012 (2024-06-06)

* Remove examples left-behind in R/.

# tiltWebTool 0.0.0.9011 (2024-06-02)

* Remove dependency on tiltPlot to simplify deployment.

# tiltWebTool 0.0.0.9010 (2024-06-01)

* New bar plot when user selects emissions data at product level, showing all
benchmarks (#26).

# tiltWebTool 0.0.0.9009 (2024-05-30)

* The app now deploys to production only if staging looks OK (#33).

# tiltWebTool 0.0.0.9008 (2024-05-29)

* Download filtered by indicator and level.

# tiltWebTool 0.0.0.9007 (2024-05-29)

INTERNAL

* New helpers for developers to conveniently browse to the app and dictionary.

# tiltWebTool 0.0.0.9006 (2024-05-29)

INTERNAL

* New UI helpers.

# tiltWebTool 0.0.0.9005 (2024-05-29)

INTERNAL

* New helpers to work with the dictionary.

# tiltWebTool 0.0.0.9004 (2024-05-28)

* The app now has a dictionary, powered by the `dictionary()` function in the 
package (#31).

# tiltWebTool 0.0.0.9003 (2024-05-27)

* The app now includes toy datasets that can be filtered by indicator, level, and
weight from interactive controls, and then further from the filter box that
the table provides (#13).

# tiltWebTool 0.0.0.9001 (2024-05-27)

* The app now has the input-selectors that are general valid. For now it avoids
handling selectors that need some logic (e.g. if "emissions" use do this, else
do that). We can start by offering complex filters via the filter box of
`DT::datatable()`.
