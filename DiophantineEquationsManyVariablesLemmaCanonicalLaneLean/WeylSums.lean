import canonicalLaneMathlib.AdmissibleClass
import DiophantineEquationsManyVariablesLemmaCanonicalLaneLean.HardysCircleMethod

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesLemmaCanonicalLaneLean

structure WeylSumsPackage {D : DiophantineSystem} (H : HardysCircleMethodPackage D) where
  weylSum : Type u
  weylSumEstimate : Prop
  weylSumBound : Prop
  derivativeEstimates : Prop
  exponentPairs : Prop

structure WeylSumsEvidence {D : DiophantineSystem} {H : HardysCircleMethodPackage D} (W : WeylSumsPackage H) where
  weylSumEstimateClosed : W.weylSumEstimate
  weylSumBoundClosed : W.weylSumBound
  derivativeEstimatesClosed : W.derivativeEstimates
  exponentPairsClosed : W.exponentPairs

def WeylSumsClosed {D : DiophantineSystem} {H : HardysCircleMethodPackage D} (W : WeylSumsPackage H) : Prop :=
  W.weylSumEstimate ∧ W.weylSumBound ∧ W.derivativeEstimates ∧ W.exponentPairs

theorem weyl_sums_closed_from_evidence {D : DiophantineSystem} {H : HardysCircleMethodPackage D} (W : WeylSumsPackage H) (E : WeylSumsEvidence W) :
    WeylSumsClosed W := by
  exact And.intro E.weylSumEstimateClosed (And.intro E.weylSumBoundClosed (And.intro E.derivativeEstimatesClosed E.exponentPairsClosed))

end DiophantineEquationsManyVariablesLemmaCanonicalLaneLean
end HautevilleHouse