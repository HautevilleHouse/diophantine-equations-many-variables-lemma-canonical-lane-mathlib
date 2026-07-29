import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesLemmaCanonicalLaneLean

structure HardyLittlewoodPackage (n : ℕ) where
  diagonalForm : Prop
  exponentialSum : Type u
  majorArcs : Prop
  minorArcs : Prop
  singularSeries : Prop
  singularIntegral : Prop

structure HardyLittlewoodEvidence {n : ℕ} (H : HardyLittlewoodPackage n) where
  diagonalFormClosed : H.diagonalForm
  majorArcsClosed : H.majorArcs
  minorArcsClosed : H.minorArcs
  singularSeriesClosed : H.singularSeries
  singularIntegralClosed : H.singularIntegral

def HardyLittlewoodClosed {n : ℕ} (H : HardyLittlewoodPackage n) : Prop :=
  H.diagonalForm ∧ H.majorArcs ∧ H.minorArcs ∧ H.singularSeries ∧ H.singularIntegral

theorem hardy_littlewood_closed_from_evidence {n : ℕ} (H : HardyLittlewoodPackage n) (E : HardyLittlewoodEvidence H) :
  HardyLittlewoodClosed H := by
  exact And.intro E.diagonalFormClosed (And.intro E.majorArcsClosed (And.intro E.minorArcsClosed (And.intro E.singularSeriesClosed E.singularIntegralClosed)))

end DiophantineEquationsManyVariablesLemmaCanonicalLaneLean
end HautevilleHouse