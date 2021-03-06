% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rsq.R
\name{rsq}
\alias{rsq}
\alias{rsq.coxph}
\alias{rsq.survfit}
\title{r^2 measures for a a \code{coxph} or \code{survfit} model}
\usage{
rsq(x, ...)

\method{rsq}{coxph}(x, ..., sigD = 2)

\method{rsq}{survfit}(x, ..., sigD = 2)
}
\arguments{
\item{x}{A \code{survfit} or \code{coxph} object.}

\item{...}{Additional arguments (not implemented).}

\item{sigD}{\bold{sig}nificant \bold{d}igits (for ease of display).
If \code{sigD=NULL}, will return the original numbers.}
}
\value{
A \code{list} with the following elements:
 \item{cod}{The \bold{c}oefficient \bold{o}f \bold{d}etermination, which is
            \deqn{R^2=1-\exp(\frac{2}{n}L_0-L_1)}{
                  R^2 = 1-exp((2/n).(L[0]-L[1]))}
           where \eqn{L_0}{L[0]} and \eqn{L_1}{L[1]} are the log partial
           likelihoods for the \emph{null} and \emph{full} models respectively
           and \eqn{n}
           is the number of observations in the data set.}
\item{mer}{The \bold{m}easure of \bold{e}xplained \bold{r}andomness, which is:
           \deqn{R^2_{mer}=1-\exp(\frac{2}{m}L_0-L_1)}{
                 R^2[mer] = 1-exp((2/m).(L[0]-L[1]))}
           where \eqn{m} is the number of observed \emph{events}.}
\item{mev}{The \bold{m}easure of \bold{e}xplained \bold{v}ariation (similar to
           that for linear regression), which is:
          \deqn{R^2=\frac{R^2_{mer}}{R^2_{mer} + \frac{\pi}{6}(1-R^2_{mer})}}{
                R^2 = R^2[mer] / ( R^2[mer] + pi/6(1-R^2[mer]) )}
}
}
\description{
r^2 measures for a a \code{coxph} or \code{survfit} model
}
\examples{
data("kidney", package="KMsurv")
c1 <- coxph(Surv(time=time, event=delta) ~ type, data=kidney)
cbind(rsq(c1), rsq(c1, sigD=NULL))

}
\references{
Nagelkerke NJD, 1991.
A Note on a General Definition of the Coefficient of Determination.
\emph{Biometrika} \bold{78}(3):691--92.
\samp{http://www.jstor.org/stable/2337038} JSTOR

O'Quigley J, Xu R, Stare J, 2005.
Explained randomness in proportional hazards models.
\emph{Stat Med} \bold{24}(3):479--89.
\samp{http://dx.doi.org/10.1002/sim.1946} Wiley (paywall)
\samp{http://www.math.ucsd.edu/~rxu/igain2.pdf} UCSD (free)

Royston P, 2006.
Explained variation for survival models.
\emph{The Stata Journal} \bold{6}(1):83--96.
\samp{http://www.stata-journal.com/sjpdf.html?articlenum=st0098}
}
