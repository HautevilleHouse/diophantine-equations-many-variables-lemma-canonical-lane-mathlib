import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesLemmaCanonicalLaneLean

structure CircleMethodEstimatesPackage where
  exponentialSum : Type u
  majorArcs : Prop
  minorArcs : Prop
  mainTerm : Prop
  errorTerm : Prop
  asymptoticFormula : Prop

structure CircleMethodEstimatesEvidence (C : CircleMethodEstimatesPackage) where
  majorArcsClosed : C.majorArcs
  minorArcsClosed : C.minorArcs
  mainTermClosed : C.mainTerm
  errorTermClosed : C.errorTerm
  asymptoticFormulaClosed : C.asymptoticFormula

def CircleMethodEstimatesClosed (C : CircleMethodEstimatesPackage) : Prop :=
  C.majorArcs ∧ C.minorArcs ∧ C.mainTerm ∧ C.errorTerm ∧ C.asymptoticFormula

theorem circle_method_estimates_closed_from_evidence (C : CircleMethodEstimatesPackage)
    (E : CircleMethodEstimatesEvidence C) : CircleMethodEstimatesClosed C := by
  exact And.intro E.majorArcsClosed (And.intro E.minorArcsClosed
    (And.intro E.mainTermClosed (And.intro E.errorTermClosed E.asymptoticFormulaClosed)))

end DiophantineEquationsManyVariablesLemmaCanonicalLaneLean
end HautevilleHouse
