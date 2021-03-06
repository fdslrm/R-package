% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MDOOLSE_orth.R
\name{MDOOLSE_orth}
\alias{MDOOLSE_orth}
\title{Modified double ordinary least squares estimates}
\usage{
MDOOLSE_orth(X, F, V)
}
\arguments{
\item{X}{time series realization.}

\item{F}{design matrix for fixed effects.}

\item{V}{design matrix for random effects.}
}
\value{
MDOOLSE of variance parameters \eqn{\sigma^2, \sigma_1^2, ..., \sigma_l^2}.
}
\description{
\code{MDOOLSE_orth(X, F, V)} calculates modified double ordinary least squares estimates (MDOOLSE) of variance parameters in orthogonal FDSLRM.
MDOOLSE are an unbiased version of DOOLSE.
}
\note{
Ver.: 21-Jan-2019 21:56:04.
}
\examples{
## EXAMPLE 1
times <- c(1:24)
freq_fixed <- c(1/24)
freq_rand <- c(1/12, 1/8)
matF <- makeF(times, freq_fixed)
matV <- makeV(times, freq_rand)
X <- c(40.3, 40.7, 38.5, 37.9, 38.6, 41.1, 45.2, 45.7, 46.7, 46.5, 45.2, 45.1, 45.8, 46.3, 47.5, 48.5, 49.1, 51.7, 50.6, 48, 44.7, 41.2, 40, 40.3)
mdoolse <- MDOOLSE_orth(X, matF, matV)
print(mdoolse)
}
