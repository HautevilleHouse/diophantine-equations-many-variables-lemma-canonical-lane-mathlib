import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesLemmaCanonicalLaneLean

structure DimensionGrowthPackage (n : ℕ) where
  formDegree : ℕ
  variableCount : ℕ
  nonSingularPoint : Prop
  dimensionBound : Prop
  HassePrincipleLift : Prop
  inductionStep : Prop

structure DimensionGrowthEvidence {n : ℕ} (D : DimensionGrowthPackage n) where
  nonSingularPointClosed : D.nonSingularPoint
  dimensionBoundClosed : D.dimensionBound
  HassePrincipleLiftClosed : D.HassePrincipleLift
  inductionStepClosed : D.inductionStep

def DimensionGrowthClosed {n : ℕ} (D : DimensionGrowthPackage n) : Prop :=
  D.nonSingularPoint ∧ D.dimensionBound ∧ D.HassePrincipleLift ∧ D.inductionStep

theorem dimension_growth_closed_from_evidence {n : ℕ} (D : DimensionGrowthPackage n) (E : DimensionGrowthEvidence D) :
  DimensionGrowthClosed D := by
  exact And.intro E.nonSingularPointClosed (And.intro E.dimensionBoundClosed (And.intro E.HassePrincipleLiftClosed E.inductionStepClosed))

end DiophantineEquationsManyVariablesLemmaCanonicalLaneLean
end HautevilleHouse