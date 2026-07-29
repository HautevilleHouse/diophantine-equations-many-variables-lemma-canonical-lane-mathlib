import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiophantineEquationsManyVariablesLemmaCanonicalLaneLean.HassePrinciplePackage

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesLemmaCanonicalLaneLean

structure BrauerManinObstructionPackage {H : HassePrinciplePackage} where
  centralSimpleAlgebra : Type u
  brauerGroup : Type v
  evaluationMap : Prop
  obstructionVanishes : Prop
  brauerManinSetNonempty : Prop

structure BrauerManinObstructionEvidence {H : HassePrinciplePackage} (B : BrauerManinObstructionPackage H) where
  evaluationMapClosed : B.evaluationMap
  obstructionVanishesClosed : B.obstructionVanishes
  brauerManinSetNonemptyClosed : B.brauerManinSetNonempty

def BrauerManinObstructionClosed {H : HassePrinciplePackage} (B : BrauerManinObstructionPackage H) : Prop :=
  B.evaluationMap ∧ B.obstructionVanishes ∧ B.brauerManinSetNonempty

theorem brauer_manin_obstruction_closed_from_evidence {H : HassePrinciplePackage}
    (B : BrauerManinObstructionPackage H) (E : BrauerManinObstructionEvidence B) :
    BrauerManinObstructionClosed B := by
  exact And.intro E.evaluationMapClosed (And.intro E.obstructionVanishesClosed E.brauerManinSetNonemptyClosed)

end DiophantineEquationsManyVariablesLemmaCanonicalLaneLean
end HautevilleHouse
