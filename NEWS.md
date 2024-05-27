<!-- NEWS.md is maintained by https://cynkra.github.io/fledge, do not edit -->

# tiltWebTool 0.0.0.9003 (2024-05-27)

* The app now includes toy datasets that can be filtered by indicator, level, and
weight from interactive controls, and then further from the filter box that
the table provides (#13).

# tiltWebTool 0.0.0.9002 (2024-05-27)

* The package (not yet the app) now has toy datasets `emissions` and `sector`.

# tiltWebTool 0.0.0.9001 (2024-05-27)

* The app now has the input-selectors that are general valid. For now it avoids
handling selectors that need some logic (e.g. if "emissions" use do this, else
do that). We can start by offering complex filters via the filter box of
`DT::datatable()`.
