import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesLemmaCanonicalLaneLean

structure WeilBoundsPackage where
  finiteField : Type u
  hypersurface : Type v
  numberRationalPoints : Prop
  bound : Prop
  weilBoundHolds : Prop

structure WeilBoundsEvidence (W : WeilBoundsPackage) where
  numberRationalPointsClosed : W.numberRationalPoints
  boundClosed : W.bound
  weilBoundHoldsClosed : W.weilBoundHolds

def WeilBoundsClosed (W : WeilBoundsPackage) : Prop :=
  W.numberRationalPoints ∧ W.bound ∧ W.weilBoundHolds

theorem weil_bounds_closed_from_evidence (W : WeilBoundsPackage) (E : WeilBoundsEvidence W) :
    WeilBoundsClosed W := by
  exact And.intro E.numberRationalPointsClosed (And.intro E.boundClosed E.weilBoundHoldsClosed)

end DiophantineEquationsManyVariablesLemmaCanonicalLaneLean
end HautevilleHouse
