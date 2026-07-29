import DiophantineEquationsManyVariablesLemmaCanonicalLaneLean.AnalyticFoundation

/-!
# Exponential Sums Package
-/

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesLemmaCanonicalLaneLean

structure ExponentialSumsPackage (F : AnalyticFoundationPackage) where
  exponentialSumDefined : Prop
  weylEstimateAvailable : Prop
  vaughanIdentityAvailable : Prop
  meanValueEstimates : Prop
  boundForCompleteExponentialSum : Prop

structure ExponentialSumsEvidence {F : AnalyticFoundationPackage}
    (C : ExponentialSumsPackage F) where
  exponentialSumDefinedClosed : C.exponentialSumDefined
  weylEstimateAvailableClosed : C.weylEstimateAvailable
  vaughanIdentityAvailableClosed : C.vaughanIdentityAvailable
  meanValueEstimatesClosed : C.meanValueEstimates
  boundForCompleteExponentialSumClosed : C.boundForCompleteExponentialSum

def ExponentialSumsClosed {F : AnalyticFoundationPackage}
    (C : ExponentialSumsPackage F) : Prop :=
  C.exponentialSumDefined ∧ C.weylEstimateAvailable ∧
  C.vaughanIdentityAvailable ∧ C.meanValueEstimates ∧ C.boundForCompleteExponentialSum

theorem exponential_sums_closed_from_evidence
    {F : AnalyticFoundationPackage} (C : ExponentialSumsPackage F)
    (E : ExponentialSumsEvidence C) : ExponentialSumsClosed C := by
  exact And.intro E.exponentialSumDefinedClosed
    (And.intro E.weylEstimateAvailableClosed
      (And.intro E.vaughanIdentityAvailableClosed
        (And.intro E.meanValueEstimatesClosed E.boundForCompleteExponentialSumClosed)))

end DiophantineEquationsManyVariablesLemmaCanonicalLaneLean
end HautevilleHouse