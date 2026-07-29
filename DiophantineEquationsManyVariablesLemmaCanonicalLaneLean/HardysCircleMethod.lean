import canonicalLaneMathlib.AdmissibleClass
import DiophantineEquationsManyVariablesLemmaCanonicalLaneLean.DiophantineSystem

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesLemmaCanonicalLaneLean

structure HardysCircleMethodPackage (D : DiophantineSystem) where
  exponentialSums : Type u
  majorArcs : Prop
  minorArcs : Prop
  singularSeries : Prop
  asymptoticFormula : Prop
  numberOfVariablesLargeEnough : Prop

structure HardysCircleMethodEvidence {D : DiophantineSystem} (H : HardysCircleMethodPackage D) where
  majorArcsClosed : H.majorArcs
  minorArcsClosed : H.minorArcs
  singularSeriesClosed : H.singularSeries
  asymptoticFormulaClosed : H.asymptoticFormula
  numberOfVariablesLargeEnoughClosed : H.numberOfVariablesLargeEnough

def HardysCircleMethodClosed {D : DiophantineSystem} (H : HardysCircleMethodPackage D) : Prop :=
  H.majorArcs ∧ H.minorArcs ∧ H.singularSeries ∧ H.asymptoticFormula ∧ H.numberOfVariablesLargeEnough

theorem hardys_circle_method_closed_from_evidence {D : DiophantineSystem} (H : HardysCircleMethodPackage D) (E : HardysCircleMethodEvidence H) :
    HardysCircleMethodClosed H := by
  exact And.intro E.majorArcsClosed (And.intro E.minorArcsClosed (And.intro E.singularSeriesClosed (And.intro E.asymptoticFormulaClosed E.numberOfVariablesLargeEnoughClosed)))

end DiophantineEquationsManyVariablesLemmaCanonicalLaneLean
end HautevilleHouse