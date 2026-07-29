import DiophantineEquationsManyVariablesLemmaCanonicalLaneLean.CircleMethod

/-!
# Many Variables Hardy-Littlewood Circle Method Package
-/

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesLemmaCanonicalLaneLean

structure HardyLittlewoodPackage {F : AnalyticFoundationPackage}
    (C : ExponentialSumsPackage F) where
  generatingFunctionDefined : Prop
  majorArcsContribution : Prop
  minorArcsBound : Prop
  singularSeriesConverges : Prop
  singularIntegralPositive : Prop

structure HardyLittlewoodEvidence {F : AnalyticFoundationPackage}
    {C : ExponentialSumsPackage F} (H : HardyLittlewoodPackage C) where
  generatingFunctionDefinedClosed : H.generatingFunctionDefined
  majorArcsContributionClosed : H.majorArcsContribution
  minorArcsBoundClosed : H.minorArcsBound
  singularSeriesConvergesClosed : H.singularSeriesConverges
  singularIntegralPositiveClosed : H.singularIntegralPositive

def HardyLittlewoodClosed {F : AnalyticFoundationPackage}
    {C : ExponentialSumsPackage F} (H : HardyLittlewoodPackage C) : Prop :=
  H.generatingFunctionDefined ∧ H.majorArcsContribution ∧
  H.minorArcsBound ∧ H.singularSeriesConverges ∧ H.singularIntegralPositive

theorem hardy_littlewood_closed_from_evidence
    {F : AnalyticFoundationPackage} {C : ExponentialSumsPackage F}
    (H : HardyLittlewoodPackage C) (E : HardyLittlewoodEvidence H) :
    HardyLittlewoodClosed H := by
  exact And.intro E.generatingFunctionDefinedClosed
    (And.intro E.majorArcsContributionClosed
      (And.intro E.minorArcsBoundClosed
        (And.intro E.singularSeriesConvergesClosed E.singularIntegralPositiveClosed)))

end DiophantineEquationsManyVariablesLemmaCanonicalLaneLean
end HautevilleHouse