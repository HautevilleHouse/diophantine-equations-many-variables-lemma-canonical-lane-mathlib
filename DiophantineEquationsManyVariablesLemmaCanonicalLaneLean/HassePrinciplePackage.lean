import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesLemmaCanonicalLaneLean

structure HassePrinciplePackage where
  globalField : Type u
  completions : Type v
  localSolvability : Prop
  globalSolvability : Prop
  hassePrincipleHolds : Prop

structure HassePrincipleEvidence (H : HassePrinciplePackage) where
  localSolvabilityClosed : H.localSolvability
  globalSolvabilityClosed : H.globalSolvability
  hassePrincipleHoldsClosed : H.hassePrincipleHolds

def HassePrincipleClosed (H : HassePrinciplePackage) : Prop :=
  H.localSolvability ∧ H.globalSolvability ∧ H.hassePrincipleHolds

theorem hasse_principle_closed_from_evidence (H : HassePrinciplePackage) (E : HassePrincipleEvidence H) :
    HassePrincipleClosed H := by
  exact And.intro E.localSolvabilityClosed (And.intro E.globalSolvabilityClosed E.hassePrincipleHoldsClosed)

end DiophantineEquationsManyVariablesLemmaCanonicalLaneLean
end HautevilleHouse
