% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/profLik.R
\name{profLik}
\alias{profLik}
\title{Profile likelihood for coefficients in a \code{coxph} model}
\usage{
profLik(x, CI = 0.95, interval = 50, mult = c(0.1, 2), devNew = TRUE, ...)
}
\arguments{
\item{x}{A \code{coxph} model.}

\item{CI}{\bold{C}onfidence \bold{I}nterval.}

\item{interval}{Number of points over which to evaluate coefficient.}

\item{mult}{\bold{Mult}iplier. Coefficent will be multiplied by lower and upper
value and evaluated across this range.}

\item{devNew}{Open a new device for each plot. See 
 \cr
?grDevices::dev.new}

\item{...}{Additional parameters passed to \code{graphics::plot.default}.}
}
\value{
One plot for each coefficient in the model.
}
\description{
Profile likelihood for coefficients in a \code{coxph} model
}
\details{
Plots of range of values for coefficient in model with log-likelihoods
for the model with the coefficient fixed at these values.
 \cr \cr
For each coefficient a range of possible values is chosen, given by
 \eqn{\hat{B}*mult_{lower} - \hat{B}*mult_{upper}}{
      Bhat * mult[lower] - Bhat * mult[upper]}.
A series of models are fit (given by \code{interval}).
The coefficient is included in the model as a
\emph{fixed} term and the partial log-likelihood for the model is calculated.
 \cr \cr
A curve is plotted which gives the partial log-likelihood for each of these candidate values.
An appropriate confidence interval (CI) is given
by subtracting 1/2 the value of the appropriate quantile
of a chi-squared distribution with \eqn{1} degree of freedom.
\cr \cr
Two circles are also plotted giving the 95% CI for the Wald statistic.
}
\examples{
data("pbc", package="survival")
c1 <- coxph(formula = Surv(time, status == 2) ~ age + edema + log(bili) +
                      log(albumin) + log(protime), data = pbc)
profLik(c1, col="red")

}
\references{
Example is from:
\bold{T&G}. 
Section 3.4.1, pg 57.
}
