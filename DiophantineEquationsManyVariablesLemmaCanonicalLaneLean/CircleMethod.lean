import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesLemmaCanonicalLaneLean

structure CircleMethod where
  majorArcsContribution : Prop
  minorArcsBound : Prop
  exponentialSumEstimates : Prop
  sufficientVariables : Nat

structure CircleMethodEvidence (C : CircleMethod) where
  majorArcsContributionClosed : C.majorArcsContribution
  minorArcsBoundClosed : C.minorArcsBound
  exponentialSumEstimatesClosed : C.exponentialSumEstimates

def CircleMethodClosed (C : CircleMethod) : Prop :=
  C.majorArcsContribution ∧ C.minorArcsBound ∧ C.exponentialSumEstimates

theorem circle_method_closed_from_evidence (C : CircleMethod)
    (E : CircleMethodEvidence C) : CircleMethodClosed C := by
  exact And.intro E.majorArcsContributionClosed
    (And.intro E.minorArcsBoundClosed E.exponentialSumEstimatesClosed)

end DiophantineEquationsManyVariablesLemmaCanonicalLaneLean
end HautevilleHouse