import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesLemmaCanonicalLaneLean

structure HardyLittlewoodPackage where
  asymptoticFormula : Prop
  singularSeries : Prop
  singularIntegral : Prop
  mainTerm : Prop
  errorTermBound : Prop

structure HardyLittlewoodEvidence (H : HardyLittlewoodPackage) where
  asymptoticFormulaClosed : H.asymptoticFormula
  singularSeriesClosed : H.singularSeries
  singularIntegralClosed : H.singularIntegral
  mainTermClosed : H.mainTerm
  errorTermBoundClosed : H.errorTermBound

def HardyLittlewoodClosed (H : HardyLittlewoodPackage) : Prop :=
  H.asymptoticFormula ∧ H.singularSeries ∧ H.singularIntegral ∧ H.mainTerm ∧ H.errorTermBound

theorem hardy_littlewood_closed_from_evidence (H : HardyLittlewoodPackage)
    (E : HardyLittlewoodEvidence H) : HardyLittlewoodClosed H := by
  exact And.intro E.asymptoticFormulaClosed
    (And.intro E.singularSeriesClosed
      (And.intro E.singularIntegralClosed
        (And.intro E.mainTermClosed E.errorTermBoundClosed)))

end DiophantineEquationsManyVariablesLemmaCanonicalLaneLean
end HautevilleHouse