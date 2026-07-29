import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesLemmaCanonicalLaneLean

structure DiophantineSystem where
  variableCount : Nat
  equationCount : Nat
  coefficients : Array (Array ℤ)
  constantTerms : Array ℤ
  degree : Nat
  homogeneous : Prop

structure DiophantineSystemEvidence (D : DiophantineSystem) where
  variableCountPos : D.variableCount > 0
  equationCountPos : D.equationCount > 0
  degreePos : D.degree > 0
  homogeneousClosed : D.homogeneous

def DiophantineSystemClosed (D : DiophantineSystem) : Prop :=
  D.variableCount > 0 ∧ D.equationCount > 0 ∧ D.degree > 0 ∧ D.homogeneous

theorem diophantine_system_closed_from_evidence (D : DiophantineSystem)
    (E : DiophantineSystemEvidence D) : DiophantineSystemClosed D := by
  exact And.intro E.variableCountPos
    (And.intro E.equationCountPos (And.intro E.degreePos E.homogeneousClosed))

end DiophantineEquationsManyVariablesLemmaCanonicalLaneLean
end HautevilleHouse