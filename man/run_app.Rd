% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/run_app.R
\name{run_app}
\alias{run_app}
\title{Run the app}
\usage{
run_app(user_name = "tilt", db = here::here("db"))
}
\arguments{
\item{user_name}{String. A \code{user_name} in inst/config/credentials.yml.}

\item{db}{Path to a parquet dataset. To understand the default, consider this:
\itemize{
\item Called from /public/, \code{here::here("db")} yields /public/db/.
\item Called from /private/, \code{here::here("db")} yields /private/db/.
}}
}
\value{
Called for its side effect.
}
\description{
Run the app
}
\examples{
\dontshow{if (interactive()) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
run_app("toy")
\dontshow{\}) # examplesIf}
}
