import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesLemmaCanonicalLaneLean

structure BombieriPilaPackage where
  heightFunction : Type
  rationalPointsCount : Prop
  determinantMethod : Prop
  projectionArgument : Prop
  boundEffective : Prop

structure BombieriPilaEvidence (B : BombieriPilaPackage) where
  rationalPointsCountClosed : B.rationalPointsCount
  determinantMethodClosed : B.determinantMethod
  projectionArgumentClosed : B.projectionArgument
  boundEffectiveClosed : B.boundEffective

def BombieriPilaClosed (B : BombieriPilaPackage) : Prop :=
  B.rationalPointsCount ∧ B.determinantMethod ∧ B.projectionArgument ∧ B.boundEffective

theorem bombieri_pila_closed_from_evidence (B : BombieriPilaPackage)
    (E : BombieriPilaEvidence B) : BombieriPilaClosed B := by
  exact And.intro E.rationalPointsCountClosed (And.intro E.determinantMethodClosed
    (And.intro E.projectionArgumentClosed E.boundEffectiveClosed))

end DiophantineEquationsManyVariablesLemmaCanonicalLaneLean
end HautevilleHouse