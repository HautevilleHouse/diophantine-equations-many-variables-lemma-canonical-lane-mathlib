import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesLemmaCanonicalLaneLean

structure HassePrinciple where
  localSolubility : Prop
  globalSolubility : Prop
  localImpliesGlobal : localSolubility → globalSolubility
  numberOfVariables : Nat
  conditionOnForm : Prop

structure HassePrincipleEvidence (H : HassePrinciple) where
  localSolubilityClosed : H.localSolubility
  localImpliesGlobalClosed : H.localImpliesGlobal H.localSolubilityClosed
  conditionOnFormClosed : H.conditionOnForm

def HassePrincipleClosed (H : HassePrinciple) : Prop :=
  H.localSolubility ∧ H.globalSolubility ∧ H.conditionOnForm

theorem hasse_principle_closed_from_evidence (H : HassePrinciple)
    (E : HassePrincipleEvidence H) : HassePrincipleClosed H := by
  have : H.globalSolubility := E.localImpliesGlobalClosed
  exact And.intro E.localSolubilityClosed (And.intro this E.conditionOnFormClosed)

end DiophantineEquationsManyVariablesLemmaCanonicalLaneLean
end HautevilleHouse