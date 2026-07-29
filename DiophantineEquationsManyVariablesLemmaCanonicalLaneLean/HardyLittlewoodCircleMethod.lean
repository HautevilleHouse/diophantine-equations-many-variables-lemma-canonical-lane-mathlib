import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesLemmaCanonicalLaneLean

structure HardyLittlewoodPackage where
  exponentialSums : Type
  majorArcs : Type
  minorArcs : Type
  singularSeries : Prop
  singularIntegral : Prop
  asymptoticFormula : Prop

structure HardyLittlewoodEvidence (H : HardyLittlewoodPackage) where
  exponentialSumsClosed : type_of H.exponentialSums
  majorArcsClosed : type_of H.majorArcs
  minorArcsClosed : type_of H.minorArcs
  singularSeriesClosed : H.singularSeries
  singularIntegralClosed : H.singularIntegral
  asymptoticFormulaClosed : H.asymptoticFormula

def HardyLittlewoodClosed (H : HardyLittlewoodPackage) : Prop :=
  H.singularSeries ∧ H.singularIntegral ∧ H.asymptoticFormula

theorem hardy_littlewood_closed_from_evidence (H : HardyLittlewoodPackage)
    (E : HardyLittlewoodEvidence H) : HardyLittlewoodClosed H := by
  exact And.intro E.singularSeriesClosed (And.intro E.singularIntegralClosed E.asymptoticFormulaClosed)

end DiophantineEquationsManyVariablesLemmaCanonicalLaneLean
end HautevilleHouse