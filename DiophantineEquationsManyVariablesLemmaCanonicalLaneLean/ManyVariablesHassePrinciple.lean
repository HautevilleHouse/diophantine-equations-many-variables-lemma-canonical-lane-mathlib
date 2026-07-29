import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesLemmaCanonicalLaneLean

structure HassePrinciplePackage (n : ℕ) where
  polynomialFamily : Type u
  integralSolutions : Prop
  localSolutions : ℕ → Prop
  smoothIntersection : Prop
  weakApproximation : Prop
  BrauerManinObstruction : Prop

structure HassePrincipleEvidence {n : ℕ} (H : HassePrinciplePackage n) where
  integralSolutionsClosed : H.integralSolutions
  localSolutionsClosed : ∀ (p : ℕ), H.localSolutions p
  smoothIntersectionClosed : H.smoothIntersection
  weakApproximationClosed : H.weakApproximation
  BrauerManinObstructionClosed : H.BrauerManinObstruction

def HassePrincipleClosed {n : ℕ} (H : HassePrinciplePackage n) : Prop :=
  H.integralSolutions ∧ (∀ p : ℕ, H.localSolutions p) ∧ H.smoothIntersection ∧ H.weakApproximation ∧ H.BrauerManinObstruction

theorem hasse_principle_closed_from_evidence {n : ℕ} (H : HassePrinciplePackage n) (E : HassePrincipleEvidence H) :
  HassePrincipleClosed H := by
  exact And.intro E.integralSolutionsClosed (And.intro E.localSolutionsClosed (And.intro E.smoothIntersectionClosed (And.intro E.weakApproximationClosed E.BrauerManinObstructionClosed)))

end DiophantineEquationsManyVariablesLemmaCanonicalLaneLean
end HautevilleHouse