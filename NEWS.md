<!-- NEWS.md is maintained by https://cynkra.github.io/fledge, do not edit -->

# tiltWebTool 0.0.0.9015 (2024-06-06)

* Use tilt theme (#FIXME).

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
