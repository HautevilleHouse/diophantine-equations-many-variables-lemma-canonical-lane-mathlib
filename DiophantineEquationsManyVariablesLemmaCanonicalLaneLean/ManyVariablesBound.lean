import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesLemmaCanonicalLaneLean

structure ManyVariablesBound where
  lowerBound : Nat
  upperBound : Nat
  solvabilityThreshold : Nat

default thresholdExceedsLower : Prop
  thresholdExceedsLowerDefined : thresholdExceedsLower

structure ManyVariablesBoundEvidence (B : ManyVariablesBound) where
  lowerBoundPos : B.lowerBound > 0
  upperBoundExceedsLower : B.upperBound > B.lowerBound
  thresholdExceedsLowerClosed : B.thresholdExceedsLower

def ManyVariablesBoundClosed (B : ManyVariablesBound) : Prop :=
  B.lowerBound > 0 ∧ B.upperBound > B.lowerBound ∧ B.thresholdExceedsLower

theorem many_variables_bound_closed_from_evidence (B : ManyVariablesBound)
    (E : ManyVariablesBoundEvidence B) : ManyVariablesBoundClosed B := by
  exact And.intro E.lowerBoundPos (And.intro E.upperBoundExceedsLower E.thresholdExceedsLowerClosed)

end DiophantineEquationsManyVariablesLemmaCanonicalLaneLean
end HautevilleHouse