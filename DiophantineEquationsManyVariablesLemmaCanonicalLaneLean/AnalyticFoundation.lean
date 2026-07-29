import Mathlib.Analysis.Analytic

/-!
# Analytic Foundation Package
-/

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesLemmaCanonicalLaneLean

structure AnalyticFoundationPackage where
  complexNumbers : Type u
  holomorphicFunctions : Type v
  cauchyEstimates : Prop
  contourIntegration : Prop
  analyticContinuation : Prop

structure AnalyticFoundationEvidence (F : AnalyticFoundationPackage) where
  cauchyEstimatesClosed : F.cauchyEstimates
  contourIntegrationClosed : F.contourIntegration
  analyticContinuationClosed : F.analyticContinuation

def AnalyticFoundationClosed (F : AnalyticFoundationPackage) : Prop :=
  F.cauchyEstimates ∧ F.contourIntegration ∧ F.analyticContinuation

theorem analytic_foundation_closed_from_evidence
    (F : AnalyticFoundationPackage) (E : AnalyticFoundationEvidence F) :
    AnalyticFoundationClosed F := by
  exact And.intro E.cauchyEstimatesClosed
    (And.intro E.contourIntegrationClosed E.analyticContinuationClosed)

end DiophantineEquationsManyVariablesLemmaCanonicalLaneLean
end HautevilleHouse