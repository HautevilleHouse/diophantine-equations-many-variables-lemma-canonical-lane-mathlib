import canonicalLaneMathlib.AdmissibleClass
import DiophantineEquationsManyVariablesLemmaCanonicalLaneLean.WeylSums

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesLemmaCanonicalLaneLean

structure VinogradovMeanValuePackage {D : DiophantineSystem} {H : HardysCircleMethodPackage D} (W : WeylSumsPackage H) where
  meanValue : Type u
  meanValueEstimate : Prop
  mainTerm : Prop
  errorTerm : Prop
  diagonalContribution : Prop
  offDiagonalContribution : Prop

structure VinogradovMeanValueEvidence {D : DiophantineSystem} {H : HardysCircleMethodPackage D} {W : WeylSumsPackage H} (V : VinogradovMeanValuePackage W) where
  meanValueEstimateClosed : V.meanValueEstimate
  mainTermClosed : V.mainTerm
  errorTermClosed : V.errorTerm
  diagonalContributionClosed : V.diagonalContribution
  offDiagonalContributionClosed : V.offDiagonalContribution

def VinogradovMeanValueClosed {D : DiophantineSystem} {H : HardysCircleMethodPackage D} {W : WeylSumsPackage H} (V : VinogradovMeanValuePackage W) : Prop :=
  V.meanValueEstimate ∧ V.mainTerm ∧ V.errorTerm ∧ V.diagonalContribution ∧ V.offDiagonalContribution

theorem vinogradov_mean_value_closed_from_evidence {D : DiophantineSystem} {H : HardysCircleMethodPackage D} {W : WeylSumsPackage H} (V : VinogradovMeanValuePackage W) (E : VinogradovMeanValueEvidence V) :
    VinogradovMeanValueClosed V := by
  exact And.intro E.meanValueEstimateClosed (And.intro E.mainTermClosed (And.intro E.errorTermClosed (And.intro E.diagonalContributionClosed E.offDiagonalContributionClosed)))

end DiophantineEquationsManyVariablesLemmaCanonicalLaneLean
end HautevilleHouse